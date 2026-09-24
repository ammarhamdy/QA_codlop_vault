#!/bin/bash
set -eo pipefail

# ==========================================
# 1. Configuration & Endpoints
# ==========================================
BASE_URL="https://test.codlop.sa"
SUBMIT_URL="${BASE_URL}/contact-submit"
USER_AGENT="Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/154.0.0.0 Safari/537.36"
ACCEPT_LANG="en-GB,en;q=0.9,ar-EG;q=0.8,ar;q=0.7,en-US;q=0.6"
FORM_TYPE="contact"
SOURCE_PATH="/"
CONSENT="1"

# Form field variables (Email defaults to empty)
NAME=""
PHONE=""
EMAIL=""
PROJECT_TYPE=""
MESSAGE=""
HONEYPOT=""
CUSTOM_CSRF=""

# ==========================================
# 2. Usage / Help Function
# ==========================================
usage() {
  echo "Usage: $0 [options]" >&2
  echo "" >&2
  echo "Required Options:" >&2
  echo "  --name <string>             Full name (1-120 chars)" >&2
  echo "  --phone <string>            Phone number (e.g., 05XXXXXXXX, +966...)" >&2
  echo "  --project-type <string>     Project category (e.g., متجر إلكتروني)" >&2
  echo "  --message <string>          Project description" >&2
  echo "" >&2
  echo "Optional / Testing Options:" >&2
  echo "  --email <string>            Email address (Optional - can be omitted or empty)" >&2
  echo "  --consent <1|0>             Consent agreement toggle (Default: 1)" >&2
  echo "  --honeypot <string>         Populate anti-spam trap field _x_y_z_ (Default: empty)" >&2
  echo "  --csrf <token>              Override CSRF token (for negative security tests)" >&2
  echo "  --url <url>                 Submission URL (Default: ${SUBMIT_URL})" >&2
  echo "  -h, --help                  Show this help message" >&2
  exit 1
}

# ==========================================
# 3. Parse Command Line Arguments
# ==========================================
while [[ "$#" -gt 0 ]]; do
  case $1 in
    --url)          SUBMIT_URL="$2"; shift ;;
    --name)         NAME="$2"; shift ;;
    --phone)        PHONE="$2"; shift ;;
    --email)        EMAIL="$2"; shift ;;
    --project-type) PROJECT_TYPE="$2"; shift ;;
    --message)      MESSAGE="$2"; shift ;;
    --consent)      CONSENT="$2"; shift ;;
    --honeypot)     HONEYPOT="$2"; shift ;;
    --csrf)         CUSTOM_CSRF="$2"; shift ;;
    --user-agent)   USER_AGENT="$2"; shift ;;
    --accept-lang)  ACCEPT_LANG="$2"; shift ;;
    --form-type)    FORM_TYPE="$2"; shift ;;
    --source-path)  SOURCE_PATH="$2"; shift ;;
    -h|--help)      usage ;;
    *) echo "Unknown parameter passed: $1" >&2; usage ;;
  esac
  shift
done

# ==========================================
# 4. Input Validation
# ==========================================
# Note: EMAIL is optional and allowed to be empty
#if [ -z "$NAME" ] || [ -z "$PHONE" ] || [ -z "$PROJECT_TYPE" ] || [ -z "$MESSAGE" ]; then
#  echo "Error: Missing required arguments." >&2
#  echo "Required: --name, --phone, --project-type, --message" >&2
#  echo "" >&2
#  usage
#fi

# ==========================================
# 5. CSRF Token Acquisition
# ==========================================
if [ -n "$CUSTOM_CSRF" ]; then
  CSRF_TOKEN="$CUSTOM_CSRF"
else
  PAGE_HTML=$(curl -sS "${BASE_URL}/" \
    -H "User-Agent: $USER_AGENT" \
    -H "Accept-Language: $ACCEPT_LANG")

  CSRF_TOKEN=$(echo "$PAGE_HTML" | grep -oP 'name="_token"\s+value="\K[^"]+' || true)
  echo "CSRF_TOKEN: ${CSRF_TOKEN}"
  
  if [ -z "$CSRF_TOKEN" ]; then
    CSRF_TOKEN=$(echo "$PAGE_HTML" | sed -n 's/.*name="_token"[[:space:]]*value="\([^"]*\)".*/\1/p')
  fi

  if [ -z "$CSRF_TOKEN" ]; then
    echo "Error: Failed to obtain CSRF token from ${BASE_URL}/" >&2
    exit 1
  fi
fi

# ==========================================
# 6. Execute cURL Request
# ==========================================
echo "POST CONTACT-US: "
curl -sS -X POST "$SUBMIT_URL" \
  -H "accept: application/json" \
  -H "accept-language: $ACCEPT_LANG" \
  -H "origin: ${BASE_URL}" \
  -H "priority: u=1, i" \
  -H "referer: ${BASE_URL}/" \
  -H "sec-ch-ua: \"Chromium\";v=\"154\", \"Google Chrome\";v=\"154\", \"Not A(Brand\";v=\"99\"" \
  -H "sec-ch-ua-mobile: ?0" \
  -H "sec-ch-ua-platform: \"Linux\"" \
  -H "sec-fetch-dest: empty" \
  -H "sec-fetch-mode: cors" \
  -H "sec-fetch-site: same-origin" \
  -H "user-agent: $USER_AGENT" \
  -H "x-requested-with: XMLHttpRequest" \
  -F "_token=$CSRF_TOKEN" \
  -F "form=$FORM_TYPE" \
  -F "source_path=$SOURCE_PATH" \
  -F "_x_y_z_=$HONEYPOT" \
  -F "name=$NAME" \
  -F "phone=$PHONE" \
  -F "email=$EMAIL" \
  -F "project_type=$PROJECT_TYPE" \
  -F "message=$MESSAGE" \
  -F "consent=$CONSENT" | jq .
