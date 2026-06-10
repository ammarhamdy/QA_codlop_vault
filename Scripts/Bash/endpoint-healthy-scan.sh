#!/usr/bin/env bash

GREEN="\e[32m"
YELLOW="\e[33m"
RED="\e[31m"
BLUE="\e[34m"
CYAN="\e[36m"
RESET="\e[0m"
FORMAT="pretty"
INPUT_FILE=""
COOKIES=""
DELAY="1"  # Default delay in seconds

show_help() {
cat <<EOF
Usage:
  $(basename "$0") [options] <endpoints-file>

Description:
  Checks HTTP endpoint status and latency metrics using curl.

Options:
  --csv              Output results as CSV
  --json             Output results as JSON
  --cookies <value>  Send cookies with requests (can be a string or file path starting with @)
  --delay <seconds>  Delay between requests (default: 1, use 0 for no delay, accepts decimals)
  --help             Show this help message and exit

Input file:
  A text file containing one endpoint URL per line.
  Empty lines and lines starting with '#' are ignored.

Metrics:
  status   HTTP status code
  dns      Time to resolve DNS
  tcp      Time to establish TCP connection
  tls      Time for TLS handshake
  ttfb     Time to first byte
  total    Total request time
 
Examples:
  $(basename "$0") endpoints.txt
  $(basename "$0") --csv endpoints.txt > results.csv
  $(basename "$0") --json endpoints.txt | jq .
  $(basename "$0") --cookies "session=abc123; token=xyz" endpoints.txt
  $(basename "$0") --cookies @cookies.txt endpoints.txt
  $(basename "$0") --delay 0.5 endpoints.txt
  $(basename "$0") --delay 0 endpoints.txt  # No delay
  
  endpoint-health-scan links-d5.txt 
  endpoint-health-scan --csv links-d5.txt > time-sheel-2.csv 
  endpoint-health-scan --cookies "auth=token123" --delay 2 links-d5.txt --csv
EOF
}

# ---- parse args ----
while [[ $# -gt 0 ]]; do
    case "$1" in
        --csv)
            FORMAT="csv"
            shift
            ;;
        --json)
            FORMAT="json"
            shift
            ;;
        --cookies)
            COOKIES="$2"
            shift 2
            ;;
        --delay)
            DELAY="$2"
            shift 2
            ;;
        --help|-h)
            show_help
            exit 0
            ;;
        *)
            INPUT_FILE="$1"
            shift
            ;;
    esac
done

# ---- validation ----
if [[ -z "$INPUT_FILE" ]]; then
    echo "Usage: $0 [--csv|--json] [--cookies <value>] [--delay <seconds>] <endpoints-file>"
    exit 1
fi

if [[ ! -f "$INPUT_FILE" ]]; then
    echo "File not found: $INPUT_FILE"
    exit 1
fi

# ---- headers ----
if [[ "$FORMAT" == "csv" ]]; then
    echo "endpoint,status,dns,tcp,tls,ttfb,total"
elif [[ "$FORMAT" == "json" ]]; then
    echo "["
fi

FIRST_JSON=true

# ---- main loop ----
while IFS= read -r endpoint; do
    [[ -z "$endpoint" || "$endpoint" =~ ^# ]] && continue
    
    # Build curl command with optional cookies
    CURL_CMD=(
        curl -s -o /dev/null
        -w "%{http_code} %{time_namelookup} %{time_connect} %{time_appconnect} %{time_starttransfer} %{time_total}"
    )
    
    # Add cookies if provided
    if [[ -n "$COOKIES" ]]; then
        if [[ "$COOKIES" == @* ]]; then
            # Cookie file (starts with @)
            CURL_CMD+=(-b "$COOKIES")
        else
            # Cookie string
            CURL_CMD+=(-b "$COOKIES")
        fi
    fi
    
    # Add remaining options
    CURL_CMD+=(
        -H "Cache-Control: no-cache"
        -H "Pragma: no-cache"
        "$endpoint?cb=$(date +%s%N)"
    )
    
    read -r status dns tcp tls ttfb total <<<"$("${CURL_CMD[@]}")"
    
    case "$FORMAT" in
        csv)
            echo "\"$endpoint\",$status,$dns,$tcp,$tls,$ttfb,$total"
            ;;
        json)
            [[ "$FIRST_JSON" == false ]] && echo ","
            FIRST_JSON=false
            cat <<EOF
  {
    "endpoint": "$endpoint",
    "status": $status,
    "dns": $dns,
    "tcp": $tcp,
    "tls": $tls,
    "ttfb": $ttfb,
    "total": $total
  }
EOF
            ;;
        pretty)
            if [[ "$status" =~ ^2 ]]; then
                color=$GREEN
            elif [[ "$status" =~ ^3 ]]; then
                color=$YELLOW
            else
                color=$RED
            fi
            echo -e "${color}$status${RESET} | \
${CYAN}DNS:${RESET} ${dns}s | \
${CYAN}TCP:${RESET} ${tcp}s | \
${CYAN}TLS:${RESET} ${tls}s | \
${CYAN}TTFB:${RESET} ${ttfb}s | \
${CYAN}TOTAL:${RESET} ${total}s | \
${BLUE}$endpoint${RESET}"
            ;;
    esac
    
    # Configurable delay between requests
    if (( $(echo "$DELAY > 0" | bc -l) )); then
        sleep "$DELAY"
    fi
done < "$INPUT_FILE"

# ---- close JSON ----
[[ "$FORMAT" == "json" ]] && echo "]"
