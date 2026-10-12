---
tc_id: TC-API-DASH-AUTH-UPDATE-PROFILE-011
title: Invalid Profile Photo
priority:
  - Medium
status:
  - completed
type:
  - API
linked_requirement: REQ-API-DASH-AUTH-PROFILE
tags:
  - test-case
run_result: pass
---

# Test Data
| Field         | Value                      |
| ------------- | -------------------------- |
| URL           | /api/dashboard/profile    |
| Method        | POST                       |
| Authorization | Bearer {valid_token}       |
| photo         | {oversized / non-image file} |

# Preconditions
- An active admin session token is available.
- An invalid file (e.g. `.txt` or file exceeding the allowed size) is prepared.

# Steps
1. Send a POST request to `https://seyanty.info/api/dashboard/profile`.
2. Set header `Accept: application/json`.
3. Set header `Authorization: Bearer {valid_token}`.
4. Upload an invalid file in the `photo` field.
5. Submit the request.
6. Observe the response.

# Expected Result
- The request fails with an error response.
- HTTP status code is `422`.
- `status` is `error`.
- A validation error message indicates the photo is invalid.

# Notes
- Only allowed image types and sizes are accepted.

# Attachments
```sh
#!/usr/bin/env bash

# Test Case: TC-API-DASH-AUTH-UPDATE-PROFILE-011 - Invalid & Unexpected Profile Photo Formats
TITLE="TC-API-DASH-AUTH-UPDATE-PROFILE-011: Invalid & Unexpected Profile Photo Formats"
echo "=================================================="
echo "Running: $TITLE"
echo "=================================================="

# 1. Login to get a valid bearer token
LOGIN_RES=$(curl --silent --location --request POST 'https://seyanty.info/api/dashboard/login' \
  --header 'Accept: application/json' \
  --header 'Content-Type: application/json' \
  --data '{
      "email_or_name": "admin-1@mail.com",
      "password": "Admin#123"
  }')

TOKEN=$(echo "$LOGIN_RES" | jq -r '.data.token // .token // .access_token // empty')

# 2. Generate unexpected format test files
TMP_DIR="/tmp/profile_test_files"
mkdir -p "$TMP_DIR"

# Edge Case 1: Zero-byte file
touch "$TMP_DIR/zero_byte.jpg"

# Edge Case 2: Plain text with spoofed image extension (MIME mismatch)
echo "Plain text payload labeled as an image" > "$TMP_DIR/fake_extension.jpg"

# Edge Case 3: Unsupported document format (PDF)
echo "%PDF-1.4 header dummy data" > "$TMP_DIR/document.pdf"

# Edge Case 4: XML-based vector format (SVG)
cat << 'EOF' > "$TMP_DIR/vector.svg"
<svg xmlns="http://www.w3.org/2000/svg" width="100" height="100">
  <circle cx="50" cy="50" r="40" stroke="green" stroke-width="4" fill="yellow" />
</svg>
EOF

# Edge Case 5: Binary executable dummy signature
echo -ne '\x7fELF\x02\x01\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00' > "$TMP_DIR/binary_sample.bin"

# Edge Case 6: Oversized file (e.g., 10MB dummy file to test size restrictions)
dd if=/dev/zero of="$TMP_DIR/oversized.jpg" bs=1M count=10 status=none

TEST_FILES=(
  "$TMP_DIR/zero_byte.jpg"
  "$TMP_DIR/fake_extension.jpg"
  "$TMP_DIR/document.pdf"
  "$TMP_DIR/vector.svg"
  "$TMP_DIR/binary_sample.bin"
  "$TMP_DIR/oversized.jpg"
)

# 3. Iterate and send requests
for FILE_PATH in "${TEST_FILES[@]}"; do
  FILENAME=$(basename "$FILE_PATH")
  echo "--------------------------------------------------"
  echo "Testing File: $FILENAME"

  RESPONSE=$(curl --silent --write-out "\nHTTP_STATUS:%{http_code}" --location --request POST 'https://seyanty.info/api/dashboard/update-profile' \
    --header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
    --header 'Accept: application/json' \
    --header 'Host: seyanty.info' \
    --header 'Connection: keep-alive' \
    --header "Authorization: Bearer $TOKEN" \
    --form 'name="admin"' \
    --form 'email="admin-1@mail.com"' \
    --form 'password="Admin#123"' \
    --form "photo=@\"$FILE_PATH\"")

  HTTP_BODY=$(echo "$RESPONSE" | sed -e '$d')
  HTTP_STATUS=$(echo "$RESPONSE" | tail -n1 | sed -e 's/HTTP_STATUS://')

  echo "Status Code: $HTTP_STATUS"
  echo "Response Body:"
  echo "$HTTP_BODY" | jq .
done

# 4. Clean up temporary files
rm -rf "$TMP_DIR"

echo "=================================================="
```