#!/usr/bin/env bash
# =====================================================
#  Website Audit Script
#  Crawl + Status Check + Report Generation
#  Usage: ./audit.sh https://example.com
# =====================================================

# ── Terminal Colors ──────────────────────────────────
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
BOLD='\033[1m'
DIM='\033[2m'
RESET='\033[0m'

# ── Logging Helpers ──────────────────────────────────
info()    { echo -e "${CYAN}[*]${RESET} $*"; }
success() { echo -e "${GREEN}[+]${RESET} $*"; }
warn()    { echo -e "${YELLOW}[!]${RESET} $*"; }
error()   { echo -e "${RED}[✗]${RESET} $*" >&2; }
step()    { echo -e "\n${BOLD}${CYAN}━━ $* ${RESET}"; }

# ── Dependency Check ─────────────────────────────────
# Ensure required tools are installed before running
check_deps() {
    local missing=()
    for cmd in gospider httpx jq; do
        if ! command -v "$cmd" &>/dev/null; then
            missing+=("$cmd")
        fi
    done

    if [ ${#missing[@]} -ne 0 ]; then
        error "Missing required tools: ${missing[*]}"
        echo -e "  ${DIM}Install them and re-run the script.${RESET}"
        exit 1
    fi
}

# ── Argument Validation ──────────────────────────────
TARGET="$1"
if [ -z "$TARGET" ]; then
    echo -e "${BOLD}Usage:${RESET} $0 https://example.com"
    exit 1
fi

# Strip trailing slash for consistency
TARGET="${TARGET%/}"

# ── Setup ────────────────────────────────────────────
check_deps

REPORT_DIR="report"
mkdir -p "$REPORT_DIR"

# Record overall start time to measure total duration
AUDIT_START=$(date +%s)

echo
echo -e "${BOLD}${CYAN}╔══════════════════════════════════════╗${RESET}"
echo -e "${BOLD}${CYAN}║        Website Audit Script          ║${RESET}"
echo -e "${BOLD}${CYAN}╚══════════════════════════════════════╝${RESET}"
echo -e "  ${DIM}Target : ${RESET}${BOLD}$TARGET${RESET}"
echo -e "  ${DIM}Report : ${RESET}${BOLD}$REPORT_DIR/${RESET}"
echo -e "  ${DIM}Time   : ${RESET}$(date '+%Y-%m-%d %H:%M:%S')"
echo

# ─────────────────────────────────────────────────────
# STEP 1 — Crawl
# gospider options:
#   -s  : seed URL
#   -d  : crawl depth
#   -c  : concurrent requests
#   --robots     : honor robots.txt links
#   --sitemap    : parse sitemap.xml
#   --js         : extract URLs from JS files
#   --other-source : use wayback/commoncrawl as extra sources
# ─────────────────────────────────────────────────────
step "Step 1/4 — Crawling"
info "Starting gospider on $TARGET  (depth=3, concurrency=20)..."

T0=$(date +%s)
gospider \
    -s "$TARGET" \
    -d 3 \
    -c 20 \
    --robots \
    --sitemap \
    --js \
    --other-source \
    2>/dev/null \
    | grep -Eo '(https?)://[^ >"]+' \
    | sort -u \
    > "$REPORT_DIR/urls.txt"

T1=$(date +%s)
TOTAL_URLS=$(wc -l < "$REPORT_DIR/urls.txt")

if [ "$TOTAL_URLS" -eq 0 ]; then
    warn "No URLs found. Check that gospider can reach the target."
else
    success "Found ${BOLD}$TOTAL_URLS${RESET} unique URLs  ${DIM}($(( T1 - T0 ))s)${RESET}"
fi

# ─────────────────────────────────────────────────────
# STEP 2 — HTTP Probing
# httpx flags:
#   -json            : output structured JSON per URL
#   -title           : extract page <title>
#   -tech-detect     : fingerprint technologies (Wappalyzer)
#   -status-code     : include HTTP status
#   -content-length  : include response size
#   -follow-redirects: follow 3xx chains
#   -web-server      : capture Server header
#   -cdn             : detect CDN provider
#   -ip              : resolve & include IP address
#   -silent          : suppress progress output
# ─────────────────────────────────────────────────────
step "Step 2/4 — HTTP Probing"
info "Running httpx against $TOTAL_URLS URLs..."

T0=$(date +%s)
cat "$REPORT_DIR/urls.txt" | httpx \
    -json \
    -title \
    -tech-detect \
    -status-code \
    -content-length \
    -follow-redirects \
    -web-server \
    -cdn \
    -ip \
    -silent \
    > "$REPORT_DIR/httpx.json"

T1=$(date +%s)
PROBED=$(wc -l < "$REPORT_DIR/httpx.json")
success "Probed ${BOLD}$PROBED${RESET} URLs  ${DIM}($(( T1 - T0 ))s)${RESET}"

# ─────────────────────────────────────────────────────
# STEP 3 — Build Summary JSON
# Aggregates: generated timestamp, total count,
# status code distribution, and technology breakdown.
# ─────────────────────────────────────────────────────
step "Step 3/4 — Building Reports"
info "Generating summary..."

jq -s '
{
  generated_at: (now | todate),
  target: $target,
  total_urls: length,

  status_codes: (
    group_by(.status_code)
    | map({
        status: (.[0].status_code | tostring),
        count:  length
      })
    | sort_by(.status)
  ),

  technologies: (
    map(.tech[]?)
    | group_by(.)
    | map({
        technology: .[0],
        count:      length
      })
    | sort_by(-.count)
  ),

  web_servers: (
    [.[].webserver? | select(. != null and . != "")]
    | group_by(.)
    | map({ server: .[0], count: length })
    | sort_by(-.count)
  ),

  cdn_providers: (
    [.[].cdn? | select(. != null and . != "")]
    | group_by(.)
    | map({ cdn: .[0], count: length })
    | sort_by(-.count)
  )
}
' --arg target "$TARGET" "$REPORT_DIR/httpx.json" > "$REPORT_DIR/summary.json"

# ─────────────────────────────────────────────────────
# Broken Links — HTTP 4xx & 5xx responses
# ─────────────────────────────────────────────────────
info "Extracting broken/errored URLs..."
jq 'select(.status_code >= 400)' \
    "$REPORT_DIR/httpx.json" \
    > "$REPORT_DIR/broken-links.json"

BROKEN=$(wc -l < "$REPORT_DIR/broken-links.json")

# ─────────────────────────────────────────────────────
# Technologies — sorted by frequency
# ─────────────────────────────────────────────────────
info "Extracting technology fingerprints..."
jq -s '
[ .[].tech[]? ]
| group_by(.)
| map({ technology: .[0], count: length })
| sort_by(-.count)
' "$REPORT_DIR/httpx.json" \
    > "$REPORT_DIR/technologies.json"

success "Reports written to ${BOLD}$REPORT_DIR/${RESET}"

# ─────────────────────────────────────────────────────
# STEP 4 — Terminal Summary
# Pull key stats out of summary.json for display
# ─────────────────────────────────────────────────────
step "Step 4/4 — Audit Summary"

AUDIT_END=$(date +%s)
DURATION=$(( AUDIT_END - AUDIT_START ))

# Read aggregated stats
STATUS_2XX=$(jq '[.status_codes[] | select(.status | startswith("2")) | .count] | add // 0' "$REPORT_DIR/summary.json")
STATUS_3XX=$(jq '[.status_codes[] | select(.status | startswith("3")) | .count] | add // 0' "$REPORT_DIR/summary.json")
STATUS_4XX=$(jq '[.status_codes[] | select(.status | startswith("4")) | .count] | add // 0' "$REPORT_DIR/summary.json")
STATUS_5XX=$(jq '[.status_codes[] | select(.status | startswith("5")) | .count] | add // 0' "$REPORT_DIR/summary.json")
TOP_TECHS=$(jq -r '[.technologies[:5][].technology] | join(", ")' "$REPORT_DIR/summary.json")
TOP_SERVER=$(jq -r '.web_servers[0].server // "N/A"' "$REPORT_DIR/summary.json")
TOP_CDN=$(jq -r '.cdn_providers[0].cdn // "None detected"' "$REPORT_DIR/summary.json")

echo -e "${BOLD}${GREEN}╔══════════════════════════════════════╗${RESET}"
echo -e "${BOLD}${GREEN}║           Audit Complete ✓           ║${RESET}"
echo -e "${BOLD}${GREEN}╚══════════════════════════════════════╝${RESET}"
echo
echo -e "  ${BOLD}Target  :${RESET} $TARGET"
echo -e "  ${BOLD}Duration:${RESET} ${DURATION}s"
echo
echo -e "  ${BOLD}${CYAN}── URL Stats ─────────────────────────${RESET}"
echo -e "  Total URLs crawled : ${BOLD}$TOTAL_URLS${RESET}"
echo -e "  Probed             : ${BOLD}$PROBED${RESET}"
echo
echo -e "  ${BOLD}${CYAN}── Status Code Breakdown ─────────────${RESET}"
echo -e "  ${GREEN}2xx (Success)  :${RESET} $STATUS_2XX"
echo -e "  ${YELLOW}3xx (Redirect) :${RESET} $STATUS_3XX"
echo -e "  ${RED}4xx (Client Err):${RESET} $STATUS_4XX"
echo -e "  ${RED}5xx (Server Err):${RESET} $STATUS_5XX"
[ "$BROKEN" -gt 0 ] && warn "Broken/errored URLs: ${BOLD}$BROKEN${RESET}"
echo
echo -e "  ${BOLD}${CYAN}── Stack Fingerprint ─────────────────${RESET}"
echo -e "  Web Server  : ${BOLD}$TOP_SERVER${RESET}"
echo -e "  CDN         : ${BOLD}$TOP_CDN${RESET}"
echo -e "  Top Techs   : ${BOLD}${TOP_TECHS:-N/A}${RESET}"
echo
echo -e "  ${BOLD}${CYAN}── Output Files ──────────────────────${RESET}"
printf "  %-22s %s\n" "URLs list:"         "$REPORT_DIR/urls.txt"
printf "  %-22s %s\n" "HTTP results:"      "$REPORT_DIR/httpx.json"
printf "  %-22s %s\n" "Summary:"           "$REPORT_DIR/summary.json"
printf "  %-22s %s\n" "Broken links:"      "$REPORT_DIR/broken-links.json"
printf "  %-22s %s\n" "Technologies:"      "$REPORT_DIR/technologies.json"
echo
