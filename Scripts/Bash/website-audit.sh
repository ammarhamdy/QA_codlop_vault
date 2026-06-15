#!/usr/bin/env bash

# Strict mode:
# -E : ERR trap inherited by functions/subshells
# -e : Exit on any command failure
# -u : Error on undefined variables
# -o pipefail : Pipeline fails if any command fails
set -Eeuo pipefail

############################################################

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
BOLD='\033[1m'
DIM='\033[2m'
RESET='\033[0m'

info()    { echo -e "${CYAN}[*]${RESET} $*"; }
success() { echo -e "${GREEN}[+]${RESET} $*"; }
warn()    { echo -e "${YELLOW}[!]${RESET} $*"; }
error()   { echo -e "${RED}[✗]${RESET} $*" >&2; }

############################################################
# Recon & Surface Mapping
#
# Usage:
#   ./recon.sh example.com
#
# Requirements:
#   subfinder
#   httpx
#   katana
#   jq
############################################################

[[ $# -eq 1 ]] || {
    error "Usage: $0 <domain>"
    exit 1
}

DOMAIN="$1"
TARGET_DOMAIN="${DOMAIN#*://}"
TARGET_DOMAIN="${TARGET_DOMAIN%%/*}"
TIMESTAMP="$(date +%Y-%m-%d-%H%M%S)"
OUTDIR="recon_${TARGET_DOMAIN}_${TIMESTAMP}"
mkdir -p "$OUTDIR"
SUBS="$OUTDIR/subs.txt"
LIVE="$OUTDIR/live.txt"
URLS="$OUTDIR/urls.txt"
REPORT="$OUTDIR/report.json"
BROKEN="$OUTDIR/broken.json"

############################################################
# Validate Dependencies
############################################################

for tool in subfinder httpx katana jq; do
    command -v "$tool" >/dev/null 2>&1 || {
        error "Missing dependency: $tool"
        exit 1
    }
done

############################################################
# Banner
############################################################

echo
echo -e "${BOLD}====================================================${RESET}"
echo -e " ${BOLD}Target${RESET}   : ${CYAN}$DOMAIN${RESET}"
echo -e " ${BOLD}Started${RESET}  : ${DIM}$(date)${RESET}"
echo -e " ${BOLD}Output${RESET}   : ${DIM}$OUTDIR${RESET}"
echo -e "${BOLD}====================================================${RESET}"

############################################################
# Subdomain Enumeration
############################################################

echo
info "Enumerating subdomains..."

# Subdomain Enumeration
# -d        : Target domain to enumerate
# -silent   : Suppress banners and extra output
# >         : Save discovered subdomains to file
# || true   : Prevent script termination if subfinder exits non-zero
subfinder \
    -d "$DOMAIN" \
    -silent \
    > "$SUBS" || true

COUNT=$(wc -l < "$SUBS")

############################################################
# Fallback
############################################################

if [[ "$COUNT" -eq 0 ]]; then
    warn "Subfinder returned 0 results"
    info "Falling back to root domain"

    {
        echo "$DOMAIN"
        echo "www.$DOMAIN"
    } > "$SUBS"
fi

success "Found $(wc -l < "$SUBS") hosts"

############################################################
# Live Host Detection
############################################################

echo
info "Probing hosts..."

# Probe live hosts
# -l        : Input file
# -silent   : Hide banners
# -threads  : Concurrent workers
# -rl       : Requests per second
httpx \
    -l "$SUBS" \
    -silent \
    -threads 100 \
    -rl 200 \
    > "$LIVE"

success "Live Hosts: $(wc -l < "$LIVE")"

############################################################
# Crawling
############################################################

echo
info "Crawling..."

# Crawl discovered hosts
# -list     : Input URL list
# -d 1      : Crawl depth 1
# -jc       : Parse JavaScript files
# -kf all   : Parse robots.txt and sitemap.xml
# -ct 5m    : Max crawl duration
# -iqp      : Ignore query parameter values
# -c 20     : Concurrent workers
# -rl 50    : Requests/sec
# -silent   : Quiet output
katana \
    -list "$LIVE" \
    -fs rdn \
    -d 1 \
    -jc \
    -kf all \
    -ct 5m \
    -iqp \
    -c 20 \
    -rl 50 \
    -silent \
    > "$URLS"

sort -u "$URLS" -o "$URLS"
success "URLs Found: $(wc -l < "$URLS")"

############################################################
# HTTP Fingerprinting
############################################################

echo
info "Fingerprinting..."

# HTTP Fingerprinting
# -l         : Input URL list
# -title     : Extract page title
# -sc        : Show HTTP status code
# -cl        : Show Content-Length header
# -td        : Detect web technologies
# -server    : Show Server header
# -ip        : Resolve and display IP address
# -cdn       : Detect CDN/WAF provider
# -asn       : Show ASN information
# -rt        : Show response time
# -location  : Show redirect location
# -fr        : Follow redirects
# -json      : Output JSON format
# -silent    : Suppress banners/progress
# -o         : Save results to file
httpx \
    -l "$URLS" \
    -title \
    -sc \
    -cl \
    -td \
    -server \
    -ip \
    -asn \
    -rt \
    -location \
    -fr \
    -json \
    -silent \
    -o "$REPORT"

############################################################
# Vulnerability Assessment
############################################################

echo
info "Running Nuclei..."

NUCLEI="$OUTDIR/nuclei.json"

# Scan live hosts using Nuclei templates
# -l              : Input targets file
# -as             : Auto-select templates based on detected technologies
# -severity       : Only run Medium/High/Critical templates
# -exclude-tags   : Skip dangerous/noisy templates ex: (-exclude-tags dos,fuzz,bruteforce)
# -rate-limit 50  : Max 50 requests/sec
# -bulk-size 25   : Process 25 hosts per template batch
# -c 25           : Run 25 templates concurrently
# -jsonl          : Output JSON Lines format
# -o              : Save results to file
nuclei \
    -l "$LIVE" \
    -as \
    -severity critical,high,medium \
    -rate-limit 50 \
    -bulk-size 25 \
    -c 25 \
    -jsonl \
    -o "$NUCLEI"

CRITICAL=$(jq -r '
select(.info.severity=="critical")
' "$NUCLEI" | wc -l)

HIGH=$(jq -r '
select(.info.severity=="high")
' "$NUCLEI" | wc -l)

MEDIUM=$(jq -r '
select(.info.severity=="medium")
' "$NUCLEI" | wc -l)

success "Nuclei Scan Finished"

############################################################
# Broken URLs
############################################################

echo
info "Extracting non-200 responses..."

jq -c '
select(
  .status_code != 200 and
  .status_code != 301 and
  .status_code != 302
)
' "$REPORT" > "$BROKEN"

############################################################
# Statistics
############################################################

LIVE_COUNT=$(wc -l < "$LIVE")
URL_COUNT=$(wc -l < "$URLS")
BROKEN_COUNT=$(wc -l < "$BROKEN")

echo
echo -e "${BOLD}====================================================${RESET}"
echo -e " ${BOLD}${GREEN}Recon Complete${RESET}"
echo -e "${BOLD}====================================================${RESET}"
echo -e " ${BOLD}Target${RESET}        : ${CYAN}$DOMAIN${RESET}"
echo -e " ${BOLD}Live Hosts${RESET}    : ${GREEN}$LIVE_COUNT${RESET}"
echo -e " ${BOLD}URLs Found${RESET}    : ${GREEN}$URL_COUNT${RESET}"
echo -e " ${BOLD}Broken URLs${RESET}   : ${YELLOW}$BROKEN_COUNT${RESET}"
echo
echo -e " ${BOLD}Files${RESET}"
echo -e " ${DIM}-----${RESET}"
echo -e " ${DIM}$SUBS${RESET}"
echo -e " ${DIM}$LIVE${RESET}"
echo -e " ${DIM}$URLS${RESET}"
echo -e " ${DIM}$REPORT${RESET}"
echo -e " ${DIM}$BROKEN${RESET}"
echo -e "${BOLD}====================================================${RESET}"
echo
echo -e " ${BOLD}Vulnerabilities${RESET}"
echo -e " ${DIM}----------------${RESET}"
echo -e " ${RED}${BOLD}Critical${RESET} : ${RED}$CRITICAL${RESET}"
echo -e " ${YELLOW}${BOLD}High${RESET}     : ${YELLOW}$HIGH${RESET}"
echo -e " ${CYAN}${BOLD}Medium${RESET}   : ${CYAN}$MEDIUM${RESET}"