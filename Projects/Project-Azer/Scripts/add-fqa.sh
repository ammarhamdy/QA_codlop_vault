#!/usr/bin/env bash

# Enable strict error handling:
#   -e : Exit immediately if any command returns a non-zero status.
#   -u : Treat unset variables as an error and exit.
#   -o pipefail : A pipeline fails if any command in the pipeline fails,
#                 not just the last command.
#
# This helps catch bugs early and prevents the script from continuing
# with invalid data or failed commands.
set -euo pipefail

# Use the first command-line argument as the FAQ JSON file.
# If no argument is provided, default to "faqs.json".
#
# Examples:
#   ./add_faq.sh                -> uses faqs.json
#   ./add_faq.sh custom.json    -> uses custom.json
FAQS_FILE="${1:-faqs.json}"

if [[ ! -f "$FAQS_FILE" ]]; then
    echo "Error: FAQ file not found: $FAQS_FILE" >&2
    exit 1
fi

FAQ=$(jq -c '.[]' "$FAQS_FILE" | shuf -n1)

if [[ -z "$FAQ" ]]; then
    echo "Error: No FAQ entries found in $FAQS_FILE" >&2
    exit 1
fi

QUESTION=$(jq -r '.question' <<< "$FAQ")
ANSWER=$(jq -r '.answer' <<< "$FAQ")


COOKIES='XSRF-TOKEN=eyJpdiI6IjBqMXhESE80d2FBNXp2Q2FSV2l1UGc9PSIsInZhbHVlIjoiOWhmUjViSHk0YW55M212dWs3bzQ4RE9aYmRCM1BON3VTQnNNMWQvTkdMK1RoVk5rR1oxMHJseExHVklkYXlYd0wwaWR0WE1pUGwvY2hMS0xIOHZIYlN6MzVWMXlrZnRtUnlKeXkwZ0ZpWFNOQmhEbHBBNWk3YlJqK0tZbzd0TGwiLCJtYWMiOiI3YzhhMTI2ZGI0NzI0OTQwMjAzMTRhZTM3MGUwOWI2ODAwMDZhZGE5MWJjMWYxOWUyMTk2YWM3ZGJiNWUyODkwIiwidGFnIjoiIn0%3D; malkat-session=eyJpdiI6InJFek9zc0lydVdxeno5bjAycXdnRnc9PSIsInZhbHVlIjoialZIMG50SzJUQm9qbERmbTFzOGtYMGNFM2NHY0k2QmRXYTFnMGorYWYzY20zVGIrREc1VVZ4STZucktJRGlwRklJTnpuUVJWOFhQdElsaFR3Mzh1eTBnTnRkVHdzeUMxZEtnTEJERm9kNVFVQXZtNmp5dVdUZms4bEMwdVVZZFoiLCJtYWMiOiI2ZDhhZDNiNTBhMGU3Nzk0ZjM2ZGViMjliYmFjMzU3MThkZGJkYmFjZjA5ZWI4YTBmMjYzNjdmN2NiNGEzYTMxIiwidGFnIjoiIn0%3D; remember_admin_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6InROWTNWVXFCU0FkcTZqTUE1VkxlOGc9PSIsInZhbHVlIjoiRFgwNk5mTWUrNkk2M1F3aWovOHFIVkNwNkZpRldoNFErQXN2dXJWQkludTlBay92em9Tb2ZScW4xSFlaeU5BaDZ0NFV5Z1ZYQW5pRmNPNXZUNlM1VXVuRVIvVUhENlIxQnFoWVVMWXB0S0N0ZWFDTnh3TGEraEdHVnNXUDlIV3pLVXBtV1JCbE83YktLaUhPQSt1TkdaZERNNERraDFMbGtqUnRma1ppY1FROElBaVhjN0Zra2FwL0ZnTXZxVTJqZFp4WEFQWTJSTFcwOThJUVlUSzI4WWFLWkUyRnd4RkhDTVE1VDZDV0pSUT0iLCJtYWMiOiI4NGM3MGNlYmMwN2JiMWZmZTFmOWZlZGNmYzQ4YTJmNjEyNzM0MWJkMDg4MmQxYjgxYTE5ZTIxOGZmYTFiZjE4IiwidGFnIjoiIn0%3D'

curl -fsS 'https://malkat-dashboard.codlop.sa/dashboard/faqs' \
    -X POST \
    -H 'User-Agent: Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:151.0) Gecko/20100101 Firefox/151.0' \
    -H 'Accept: application/json, text/javascript, */*; q=0.01' \
    -H 'Accept-Language: en-US,en;q=0.9' \
    -H 'X-Requested-With: XMLHttpRequest' \
    -H 'Origin: https://malkat-dashboard.codlop.sa' \
    -H 'Referer: https://malkat-dashboard.codlop.sa/dashboard/faqs' \
    -H "Cookie: $COOKIES" \
    -F '_token=tQDgyfhY4DgCtNPSwdbpWr4WI0Djgv3tF9qBk1cq' \
    -F '_method=POST' \
	--form-string "question=$QUESTION" \
	--form-string "answer=$ANSWER"

