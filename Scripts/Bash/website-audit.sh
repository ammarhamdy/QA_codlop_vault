#!/usr/bin/env bash

set -Eeuo pipefail

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
    echo "Usage: $0 <domain>"
    exit 1
}

DOMAIN="$1"

TIMESTAMP="$(date +%Y%m%d_%H%M%S)"
OUTDIR="recon_${DOMAIN}_${TIMESTAMP}"

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
        echo "[!] Missing dependency: $tool"
        exit 1
    }
done

############################################################
# Banner
############################################################

echo
echo "===================================================="
echo " Target   : $DOMAIN"
echo " Started  : $(date)"
echo " Output   : $OUTDIR"
echo "===================================================="

############################################################
# Subdomain Enumeration
############################################################

echo
echo "[+] Enumerating subdomains..."

subfinder \
    -d "$DOMAIN" \
    -silent \
    > "$SUBS" || true

COUNT=$(wc -l < "$SUBS")

############################################################
# Fallback
############################################################

if [[ "$COUNT" -eq 0 ]]; then
    echo "[!] Subfinder returned 0 results"
    echo "[*] Falling back to root domain"

    {
        echo "$DOMAIN"
        echo "www.$DOMAIN"
    } > "$SUBS"
fi

echo "[+] Found $(wc -l < "$SUBS") hosts"

############################################################
# Live Host Detection
############################################################

echo
echo "[+] Probing hosts..."

httpx \
    -l "$SUBS" \
    -silent \
    -threads 100 \
    -rl 200 \
    > "$LIVE"

echo "[+] Live Hosts: $(wc -l < "$LIVE")"

############################################################
# Crawling
############################################################

echo
echo "[+] Crawling..."

katana \
    -list "$LIVE" \
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

echo "[+] URLs Found: $(wc -l < "$URLS")"

############################################################
# HTTP Fingerprinting
############################################################

echo
echo "[+] Fingerprinting..."

httpx \
    -l "$URLS" \
    -title \
    -sc \
    -cl \
    -td \
    -server \
    -ip \
    -cdn \
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
echo "[+] Running Nuclei..."

NUCLEI="$OUTDIR/nuclei.json"

nuclei \
    -l "$LIVE" \
    -as \
    -severity critical,high,medium \
    -exclude-tags dos,fuzz,bruteforce \
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

echo "[+] Nuclei Scan Finished"

############################################################
# Broken URLs
############################################################

echo
echo "[+] Extracting non-200 responses..."

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
echo "===================================================="
echo " Recon Complete"
echo "===================================================="
echo " Target        : $DOMAIN"
echo " Live Hosts    : $LIVE_COUNT"
echo " URLs Found    : $URL_COUNT"
echo " Broken URLs   : $BROKEN_COUNT"
echo
echo " Files"
echo " -----"
echo " $SUBS"
echo " $LIVE"
echo " $URLS"
echo " $REPORT"
echo " $BROKEN"
echo "===================================================="
echo
echo " Vulnerabilities"
echo " ----------------"
echo " Critical : $CRITICAL"
echo " High     : $HIGH"
echo " Medium   : $MEDIUM"