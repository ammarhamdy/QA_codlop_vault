---
tc_id: TC-API-DASH-EMP-CREATE-019
title: Invalid Profile Photo
priority: Medium
status:
  - completed
type: Functional
linked_requirement: REQ-DASH-EMP-013
tags:
  - test-case
  - api
  - dashboard
  - employees
  - create
  - negative
  - file-upload
  - validation
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| name | employee-10 |
| email | employee-10@mail.com |
| password | Admin#123 |
| phone | 0500000110 |
| job_title | eng |
| overview | Test overview |
| photo | /home/am/Pictures/profile/male/invalid-file.txt |

# Preconditions
- Valid authentication token (Bearer token) available for admin user
- Database is in clean state
- API server is running and accessible at https://seyanty.info
- Invalid test file exists (non-image format: .txt, .pdf, .exe, etc.)

# Steps
1. Prepare multipart/form-data request with invalid profile photo (non-image file)
2. Set Authorization header with valid Bearer token
3. Send POST request to https://seyanty.info/api/dashboard/employees
4. Capture response status code, headers, and body

# Expected Result
- **HTTP Status Code:** 422 Unprocessable Entity (or 400 Bad Request)
- **Response Headers:** Content-Type: application/json
- **Response Body:**
```json
{
    "status": "error",
    "code": 422,
    "message": "ملف الصورة غير صحيح",
    "data": {
        "photo": ["يجب أن يكون الملف صورة بصيغة: jpeg, png, jpg, gif, webp."]
    }
}
```
- **Database Assertions:** No employee record created

# Notes
- File type validation should check MIME type and extension
- Test with various invalid formats: .txt, .pdf, .exe, .zip, etc.
- Error message is in Arabic as per API localization

# Attachments/Script
```bash
#!/usr/bin/env bash

set -euo pipefail

BASE_URL="https://seyanty.info/api/dashboard"
INVALID_DIR="/home/am/Pictures/samples/invalid"

# Authenticate and extract the Bearer token
login() {
  local email="$1"
  local password="$2"
  local payload

  payload=$(jq -n \
    --arg email "$email" \
    --arg password "$password" \
    '{email_or_name: $email, password: $password}')

  local response
  response=$(curl --silent --show-error --location --request POST "${BASE_URL}/login" \
    --header "Accept: application/json" \
    --header "Content-Type: application/json" \
    --data "$payload")

  echo "$response" | jq -r '.data.token // .token // .access_token // empty'
}

# Verify directory exists
if [[ ! -d "$INVALID_DIR" ]]; then
  echo "Error: Directory does not exist: $INVALID_DIR" >&2
  exit 1
fi

echo "Logging in..."
AUTH_TOKEN=$(login "admin@admin.com" "Admin#123")

if [[ -z "$AUTH_TOKEN" ]]; then
  echo "Error: Failed to obtain authentication token." >&2
  exit 1
fi
echo "Token received successfully."

# Collect all files from the directory (handling spaces and special characters safely)
shopt -s nullglob
files=("$INVALID_DIR"/*)
shopt -u nullglob

if [[ ${#files[@]} -eq 0 ]]; then
  echo "No files found in $INVALID_DIR"
  exit 0
fi

echo "Starting Image Validation Test Suite (${#files[@]} files found)..."
echo "=================================================================="

run_number=1

for file_path in "${files[@]}"; do
  # Skip if it's a directory
  [[ -d "$file_path" ]] && continue

  file_name=$(basename "$file_path")
  file_size=$(du -h "$file_path" | cut -f1)

  echo "[Run #${run_number}] Testing File: '${file_name}' (${file_size})"

  response=$(curl --silent --write-out "\nHTTP_STATUS:%{http_code}" \
    --location \
    --request POST "${BASE_URL}/employees" \
    --header "Authorization: Bearer ${AUTH_TOKEN}" \
    --header "Accept: application/json" \
    --form-string "name=employee-test-${run_number}" \
    --form-string "email=employee-test-${run_number}@mail.com" \
    --form-string "password=Admin#123" \
    --form-string "phone=0500000${run_number}" \
    --form "photo=@${file_path}" \
    --form-string "job_title=eng" \
    --form-string "overview=Test overview for invalid image upload")

  http_body=$(echo "$response" | sed -e '$d')
  http_status=$(echo "$response" | tail -n1 | sed -e 's/HTTP_STATUS://')

  echo "Status: ${http_status}"
  echo "Response: $(echo "$http_body" | jq -c . 2>/dev/null || echo "$http_body")"
  echo -e "\n\n"

  ((run_number++))
done
```

---
*Last Updated: 2026-08-23 10:00:00*