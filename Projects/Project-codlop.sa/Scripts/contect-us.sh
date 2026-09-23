#!/bin/bash

# ==========================================
# 1. Configuration & Endpoint
# ==========================================
URL="https://test.codlop.sa/contact-submit"
USER_AGENT="Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/154.0.0.0 Safari/537.36"
ACCEPT_LANG="en-GB,en;q=0.9,ar-EG;q=0.8,ar;q=0.7,en-US;q=0.6"
FORM_TYPE="contact"
SOURCE_PATH="/"
CONSENT="1"

# ==========================================
# 2. Authentication & Session Cookies (Hardcoded)
# ==========================================
CSRF_TOKEN="7vZMuovhIOy4Myxk44IZd1xKDzmE4qScEDQRAyKY"

# Function to display usage help
usage() {
  echo "Usage: $0 [options]"
  echo "Options:"
  echo "  --url <url>                (Default: https://test.codlop.sa/contact-submit)"
  echo "  --user-agent <string>      (Browser user agent)"
  echo "  --accept-lang <string>     (Accept-Language header)"
  echo "  --form-type <string>       (Default: contact)"
  echo "  --source-path <path>       (Default: /)"
  echo "  --name <string>            (Required)"
  echo "  --phone <string>           (Required)"
  echo "  --email <string>           (Required)"
  echo "  --project-type <string>    (Required)"
  echo "  --message <string>         (Required)"
  echo "  --consent <1|0>            (Default: 1)"
  echo "  -h, --help                 (Show this help message)"
  exit 1
}

# ==========================================
# 3. Parse Command Line Arguments
# ==========================================
while [[ "$#" -gt 0 ]]; do
  case $1 in
    --url) URL="$2"; shift ;;
    --user-agent) USER_AGENT="$2"; shift ;;
    --accept-lang) ACCEPT_LANG="$2"; shift ;;
    --form-type) FORM_TYPE="$2"; shift ;;
    --source-path) SOURCE_PATH="$2"; shift ;;
    --name) NAME="$2"; shift ;;
    --phone) PHONE="$2"; shift ;;
    --email) EMAIL="$2"; shift ;;
    --project-type) PROJECT_TYPE="$2"; shift ;;
    --message) MESSAGE="$2"; shift ;;
    --consent) CONSENT="$2"; shift ;;
    -h|--help) usage ;;
    *) echo "Unknown parameter passed: $1"; usage ;;
  esac
  shift
done

# ==========================================
# 4. Validation
# ==========================================
# Check if required form fields are provided
if [ -z "$NAME" ] || [ -z "$PHONE" ] || [ -z "$PROJECT_TYPE" ] || [ -z "$MESSAGE" ]; then
  echo "Error: Missing required arguments."
  echo "Required: --name, --phone, --email, --project-type, --message"
  echo ""
  usage
fi

# ==========================================
# 5. Execute cURL Request
# ==========================================
curl -X POST "$URL" \
  -H "accept: application/json" \
  -H "accept-language: $ACCEPT_LANG" \
  -H "origin: https://test.codlop.sa" \
  -H "priority: u=1, i" \
  -H "referer: https://test.codlop.sa/" \
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
  -F "name=$NAME" \
  -F "phone=$PHONE" \
  -F "email=$EMAIL" \
  -F "project_type=$PROJECT_TYPE" \
  -F "message=$MESSAGE" \
  -F "consent=$CONSENT"
