#!/usr/bin/env bash
set -euo pipefail

# ==========================================
# 1. Base URLs & Endpoints
# ==========================================
BASE_URL="https://test.codlop.sa"
ENDPOINT="${BASE_URL}/admin/team"
REFERER="${BASE_URL}/admin/team/create"

USER_AGENT="Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/154.0.0.0 Safari/537.36"
ACCEPT_LANG="en-GB,en;q=0.9,ar-EG;q=0.8,ar;q=0.7,en-US;q=0.6"

# ==========================================
# 2. Authentication & Session Cookies
# ==========================================
# Note: You can supply either the full browser cookie string or just the session cookies
COOKIE='XSRF-TOKEN=eyJpdiI6IndxeCtzaU5vMzhaczZ6cm1QcnBkTkE9PSIsInZhbHVlIjoiSGd2U28zZ0tST0lCbS9UOU5qRFVtQndodVMyZFZBSUNQQlpVWWRqQkUxLzJFdXpHRFRRYWw1UG9nV216N3ByYkliMGMvWC9pY2VLNmphMzcxRGUyTHVHV0pVcEtKRVdidkQrV01UWWplZkpQQ1U1MlpmTFAzbXVpRXJKSnAyV1QiLCJtYWMiOiJmZmJhZDAwYWIzNDYwNTk1MzcyZDUwM2I0MDk0YmVjM2FmZTE3N2FkNzczYzY0ODNjMDQ1ZjQ3YTI1MDFmMWU0IiwidGFnIjoiIn0%3D; codlop-session=eyJpdiI6IlZUVkdaM3BrdXlRSFMzd1JqQ2k0S2c9PSIsInZhbHVlIjoiTzZlTm9pRkdPc3BCT3B2V09Pa0dXV1hQQ0ZqODFVeDAxRzNic25Wc3RoMkIyNFFCdm9SUlVTVUJSck1idlJPeG1sVmoxeFpPVGNkVTFFZ1dvRGtVT1lSc24xTXFNT3VzVE45aTYxTUJFdm9VOE9PUFFhNHY2cDlFQzF6Y2lQUEIiLCJtYWMiOiI4MTRjZWJlNDk2Y2M2Mjc1ZGY5ZTg3MTcyZGNkMjkwNDJkYTNjNTdlYjIyMGY3NDhlMzZmZjM1NGU4YzM1MDQ3IiwidGFnIjoiIn0%3D'
CSRF_TOKEN="UNUBk9EniZSyByP2tHZA1oi9m3LXkEc5ggef62XF"

# ==========================================
# 3. Form Field Values
# ==========================================
NAME_AR="احمد"
NAME_EN="Ahmed"
TITLE_AR="مهندس برمجيات"
TITLE_EN="software engineer"
TINT="mint"
BIO_AR="مهندس برمجيات  مهندس برمجيات  مهندس برمجيات  مهندس برمجيات"
BIO_EN="software engineer software engineer software engineer software engineer"
LINKEDIN_URL="https://linkedin.com"
X_URL="https://x.com/codlop"
EMAIL="codlop.sa@mail.com"
PLACEHOLDER="pm"
IS_VISIBLE="1"

# The ~21.7 KB Content-Length in your request corresponds to an attached image file:
PHOTO_FILE_PATH="./avatar.png"

if [[ -n "$PHOTO_FILE_PATH" && -f "$PHOTO_FILE_PATH" ]]; then
  PHOTO_PARAM="photo=@${PHOTO_FILE_PATH};type=image/png"
else
  # Fallback if no file is selected (empty file input)
  PHOTO_PARAM="photo=;filename="
fi

# ==========================================
# 4. cURL Execution
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
  --form "$PHOTO_PARAM" \
  --form "placeholder=$PLACEHOLDER" \
  --form "is_visible=$IS_VISIBLE"
