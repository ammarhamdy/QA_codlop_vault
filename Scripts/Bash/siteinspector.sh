#!/usr/bin/env bash

# =====================================================
#  siteinspector — Minimal Website Audit
#  Usage: ./siteinspector.sh https://example.com
# =====================================================

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

# ── Deps ─────────────────────────────────────────────
check_deps() {
    local missing=()
    for cmd in katana httpx jq curl openssl dig; do
        command -v "$cmd" &>/dev/null || missing+=("$cmd")
    done
    [ ${#missing[@]} -ne 0 ] && error "Missing: ${missing[*]}" && exit 1
}

# ── Args ─────────────────────────────────────────────
TARGET="${1%/}"
[ -z "$TARGET" ] && echo -e "${BOLD}Usage:${RESET} $0 https://example.com" && exit 1

HOSTNAME=$(echo "$TARGET" | sed 's~https\?://~~' | cut -d'/' -f1)
REPORT="report.json"
URLS_FILE="urls.txt"

check_deps

START=$(date +%s)

echo
echo -e "${BOLD}${CYAN}╔══════════════════════════════════╗${RESET}"
echo -e "${BOLD}${CYAN}║       siteinspector  v2.0        ║${RESET}"
echo -e "${BOLD}${CYAN}╚══════════════════════════════════╝${RESET}"
echo -e "  ${DIM}Target :${RESET} ${BOLD}$TARGET${RESET}"
echo -e "  ${DIM}Time   :${RESET} $(date '+%Y-%m-%d %H:%M:%S')"
echo

# ─────────────────────────────────────────────────────
# RECON — DNS + SSL
# Grab IPs and certificate expiry before crawling
# ─────────────────────────────────────────────────────
info "DNS & SSL recon..."

DNS_IPS=$(dig +short A "$HOSTNAME" 2>/dev/null | tr '\n' ',' | sed 's/,$//')

SSL_EXPIRY=$(echo | timeout 5 openssl s_client \
    -connect "$HOSTNAME:443" \
    -servername "$HOSTNAME" 2>/dev/null \
    | openssl x509 -noout -enddate 2>/dev/null \
    | cut -d= -f2)

# ─────────────────────────────────────────────────────
# SECURITY HEADERS — score only, no full dump
# Only care if critical headers are missing
# ─────────────────────────────────────────────────────
info "Checking security headers..."

RAW_HEADERS=$(curl -sI --max-time 10 "$TARGET" 2>/dev/null)

MISSING_HEADERS=()
for h in "Strict-Transport-Security" "Content-Security-Policy" \
          "X-Frame-Options" "X-Content-Type-Options"; do
    echo "$RAW_HEADERS" | grep -qi "^$h:" || MISSING_HEADERS+=("$h")
done

# ─────────────────────────────────────────────────────
# CRAWL — katana
# Scoped to same domain, JS-aware, with hard time limit
# ─────────────────────────────────────────────────────
info "Crawling $TARGET..."

URLS=$(katana \
    -u "$TARGET" \
    -jc \
    -kf all \
    -fs fqdn \
    -d 2 \
    -c 10 \
    -timeout 10 \
    -crawl-duration 3m \
    -silent 2>/dev/null \
    | sort -u)

TOTAL_URLS=$(echo "$URLS" | grep -c .)
success "Discovered $TOTAL_URLS URLs"
echo "$URLS" > "$URLS_FILE"

# ─────────────────────────────────────────────────────
# PROBE — httpx
# One JSON line per URL with only what matters:
# status, title, server, tech stack
# ─────────────────────────────────────────────────────
info "Probing $TOTAL_URLS URLs..."

HTTPX_OUT=$(echo "$URLS" | httpx \
    -status-code \
    -title \
    -tech-detect \
    -web-server \
    -follow-redirects \
    -silent \
    -json 2>/dev/null)

success "Probing done"

# ─────────────────────────────────────────────────────
# REPORT — single JSON file
# Structure:
#   meta    → target, timestamp, duration
#   recon   → IPs, SSL expiry, missing security headers
#   stats   → status code breakdown
#   stack   → web server + top technologies
#   broken  → 4xx/5xx URLs with status + title only
# ─────────────────────────────────────────────────────
info "Building report..."

DURATION=$(( $(date +%s) - START ))

echo "$HTTPX_OUT" | jq -s \
    --arg target   "$TARGET" \
    --arg host     "$HOSTNAME" \
    --arg dns      "$DNS_IPS" \
    --arg ssl      "${SSL_EXPIRY:-unavailable}" \
    --arg missing  "$(IFS=,; echo "${MISSING_HEADERS[*]}")" \
    --arg duration "${DURATION}s" \
'{
  meta: {
    target:       $target,
    hostname:     $host,
    generated_at: (now | todate),
    duration:     $duration
  },

  recon: {
    dns_ips:         ($dns | split(",") | map(select(. != ""))),
    ssl_expiry:      $ssl,
    missing_headers: ($missing | split(",") | map(select(. != "")))
  },

  stats: {
    total_urls: length,
    by_status: (
      group_by(.status_code)
      | map({ (.[0].status_code | tostring): length })
      | add
    )
  },

  stack: {
    web_server: ([ .[].webserver? | select(. != null and . != "") ] | first // "unknown"),
    technologies: (
      [ .[].tech[]? ]
      | group_by(.)
      | map({ tech: .[0], count: length })
      | sort_by(-.count)
      | .[:10]
    )
  },

  broken: [
    .[] | select(.status_code >= 400) | {
      url:    .url,
      status: .status_code,
      title:  (.title // "")
    }
  ]
}' > "$REPORT"

# ─────────────────────────────────────────────────────
# SUMMARY — terminal output
# ─────────────────────────────────────────────────────
BROKEN_COUNT=$(jq '.broken | length'                          "$REPORT")
TOTAL=$(jq '.stats.total_urls'                                "$REPORT")
SERVER=$(jq -r '.stack.web_server'                            "$REPORT")
TECHS=$(jq -r '[.stack.technologies[:5][].tech] | join(", ")' "$REPORT")
MISSING=$(jq -r '.recon.missing_headers | join(", ")'         "$REPORT")

echo
echo -e "${BOLD}${GREEN}╔══════════════════════════════════╗${RESET}"
echo -e "${BOLD}${GREEN}║       Audit Complete  ✓          ║${RESET}"
echo -e "${BOLD}${GREEN}╚══════════════════════════════════╝${RESET}"
echo
echo -e "  ${BOLD}${CYAN}── Recon ──────────────────────────${RESET}"
echo -e "  IPs        : ${BOLD}$DNS_IPS${RESET}"
echo -e "  SSL Expiry : ${BOLD}${SSL_EXPIRY:-N/A}${RESET}"
[ ${#MISSING_HEADERS[@]} -gt 0 ] \
    && warn "Missing headers : ${BOLD}$MISSING${RESET}" \
    || success "All critical security headers present"
echo
echo -e "  ${BOLD}${CYAN}── Results ────────────────────────${RESET}"
echo -e "  URLs probed : ${BOLD}$TOTAL${RESET}"
echo -e "  Web server  : ${BOLD}$SERVER${RESET}"
echo -e "  Tech stack  : ${BOLD}${TECHS:-N/A}${RESET}"
[ "$BROKEN_COUNT" -gt 0 ] \
    && warn "Broken links: ${BOLD}$BROKEN_COUNT${RESET}  ${DIM}(see .broken in $REPORT)${RESET}" \
    || success "No broken links found"
echo
echo -e "  ${DIM}Report → ${RESET}${BOLD}$REPORT${RESET}  ${DIM}(${DURATION}s)${RESET}"
echo -e "  ${DIM}Urls   → ${RESET}${BOLD}$URLS_FILE${RESET}"
echo