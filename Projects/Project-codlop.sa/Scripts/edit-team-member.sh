#!/usr/bin/env bash
set -euo pipefail

# ==========================================
# 1. Base URLs & Authentication
# ==========================================
BASE_URL="https://test.codlop.sa"
ENDPOINT="${BASE_URL}/admin/team"
REFERER="${BASE_URL}/admin/team/create"

USER_AGENT="Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/154.0.0.0 Safari/537.36"
ACCEPT_LANG="en-GB,en;q=0.9,ar-EG;q=0.8,ar;q=0.7,en-US;q=0.6"

COOKIE="XSRF-TOKEN=eyJpdiI6ImNCOFo1SDJCQXlVR1I1VjJLbWd0a0E9PSIsInZhbHVlIjoiZXVBTFJNUm9zblVCTFlnSkZZRWFWQmhjQThzallhOXh0eVI2UDFMZGUrRGxZRXVVd3ZVWFo5c0xlS0hlZ29tUGZvZ20rV3gvZFUyVVFVVHpiaWR2YlZZemFYcUQ4RGdTejRXdEppTjdaU21UR3ByZlB5VTgwckVjU0RKbEt0SUwiLCJtYWMiOiJkZDliNzYxMzUxYTJmZjNmMzA5ODI5MWU2MGM4YTQ1MjUzZTA4NThmOTJiNDI3NmVhOWNjYTkwMzYyNjFhMTU4IiwidGFnIjoiIn0%3D; codlop-session=eyJpdiI6InNucDVFMFFCU1ViUkdzRFAwaHBZdkE9PSIsInZhbHVlIjoiV21ZbUF0ZFJCTWUzK2RVNDBkUENBaHB3TEYrN29zdDJCYU9KRmFldG5LRzUvNWtOdENvTllRa1JjQlg2MVQwK3NjZUxmZjdkYURpZkY2RW5iVWhua1ZPOGdGSUNyVmRtTDRLSFZ1WGNNTi9XYnQ1VXZXUTdEd2ZhYlQ2Rm5xOTciLCJtYWMiOiI5YmM2ZDhjOTJmMmE0MmRhNjE1YmFlZTBlODRlZGRkZTI0MGUwMmE0YTk5YmMzMzY5NjliOWNlZDk5NmI1OTVjIiwidGFnIjoiIn0%3D"
CSRF_TOKEN="UNUBk9EniZSyByP2tHZA1oi9m3LXkEc5ggef62XF"

# ==========================================
# 2. Form Field Values
# ==========================================
NAME_AR="احمد"
NAME_EN="Ahmed"
TITLE_AR="مهندس برمجيات"
TITLE_EN="software engineer"
TINT="mint"
BIO_AR="مهندس برمجيات  مهندس برمجيات  مهندس برمجيات  مهندس برمجيات  مهندس برمجيات  مهندس برمجيات"
BIO_EN="software engineer software engineer software engineer software engineer software engineer"
LINKEDIN_URL="https://linnkedin.com"
X_URL="https://x.com/codlop"
EMAIL="codlop.sa@mail.com"
PLACEHOLDER="pm"
IS_VISIBLE="1"

# Empty file input handling:
# To upload an actual file, set PHOTO_PATH="/path/to/image.png"
PHOTO_PATH=""
if [[ -n "$PHOTO_PATH" && -f "$PHOTO_PATH" ]]; then
  PHOTO_FIELD="photo=@${PHOTO_PATH}"
else
  PHOTO_FIELD="photo=;filename="
fi

# ==========================================
# 3. cURL Execution
# ==========================================
curl --silent --show-error --location --request POST "$ENDPOINT" \
  -H 'accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7' \
  -H "accept-language: $ACCEPT_LANG" \
  -H 'cache-control: max-age=0' \
  -H "origin: $BASE_URL" \
  -H "referer: $REFERER" \
  -H 'sec-ch-ua: "Chromium";v="154", "Google Chrome";v="154", "Not A(Brand";v="99"' \
  -H 'sec-ch-ua-mobile: ?0' \
  -H 'sec-ch-ua-platform: "Linux"' \
  -H 'sec-fetch-dest: document' \
  -H 'sec-fetch-mode: navigate' \
  -H 'sec-fetch-site: same-origin' \
  -H 'sec-fetch-user: ?1' \
  -H 'upgrade-insecure-requests: 1' \
  -H "user-agent: $USER_AGENT" \
  -b "$COOKIE" \
  --form "_token=$CSRF_TOKEN" \
  --form "name_ar=$NAME_AR" \
  --form "name_en=$NAME_EN" \
  --form "title_ar=$TITLE_AR" \
  --form "title_en=$TITLE_EN" \
  --form "tint=$TINT" \
  --form "bio_ar=$BIO_AR" \
  --form "bio_en=$BIO_EN" \
  --form "linkedin_url=$LINKEDIN_URL" \
  --form "x_url=$X_URL" \
  --form "email=$EMAIL" \
  --form "$PHOTO_FIELD" \
  --form "placeholder=$PLACEHOLDER" \
  --form "is_visible=$IS_VISIBLE"
