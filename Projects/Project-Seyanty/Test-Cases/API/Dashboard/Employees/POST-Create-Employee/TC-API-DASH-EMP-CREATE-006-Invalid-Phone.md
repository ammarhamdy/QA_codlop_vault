---
tc_id: TC-API-DASH-EMP-CREATE-006
title: Invalid Phone
priority: High
status:
type: Functional
linked_requirement: REQ-DASH-EMP-004
tags:
  - test-case
  - api
  - dashboard
  - employees
  - create
  - negative
  - validation
---

# Test Data
| Field | Value |
| ----- | ----- |
| name | employee-10 |
| email | employee-10@mail.com |
| password | Admin#123 |
| phone | 123 |
| job_title | eng |
| overview | Test overview |
| photo | /home/am/Pictures/profile/male/79ad7b7a-99da-4e20-962d-1e9fc405312b.jpeg |

# Preconditions
- Valid authentication token (Bearer token) available for admin user
- Database is in clean state
- API server is running and accessible at https://seyanty.info

# Steps
1. Prepare multipart/form-data request with invalid phone format (too short, non-numeric, etc.)
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
    "message": "رقم الهاتف غير صحيح",
    "data": {
        "phone": ["يجب أن يكون رقم الهاتف بصيغة صحيحة."]
    }
}
```
- **Database Assertions:** No employee record created

# Notes
- Phone validation should check for valid Saudi phone number format (10 digits starting with 05)
- Test with various invalid formats: too short, letters, special characters, wrong prefix
- Error message is in Arabic as per API localization

# Attachments/Script
```bash
#!/usr/bin/env bash

set -euo pipefail

BASE_URL="https://seyanty.info/api/dashboard"
# AUTH_TOKEN="your_token_here"
PHOTO_PATH="/home/am/Pictures/profile/male/79ad7b7a-99da-4e20-962d-1e9fc405312b.jpeg"

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

echo "Logging in..."
AUTH_TOKEN=$(login "admin@admin.com" "Admin#123")

# Test cases covering common phone number validation rules
test_cases=(
  "Empty String::"
  "Too short (1-3 digits):123"
  "Too short (5 digits):12345"
  "Too long (25 digits):1234567890123456789012345"
  "Alphabetic characters:abcdefghijk"
  "Alphanumeric mix:01012345abc"
  "Special characters:010-1234-5678"
  "Symbols only:!@#$%^&*()"
  "Spaces inside:010 1234 5678"
  "Leading spaces:   01012345678"
  "Trailing spaces:01012345678   "
  "Plus with no digits:+"
  "Double plus sign:++201012345678"
  "Plus in the middle:010+12345678"
  "Invalid country prefix:000000000000"
  "All zeros:0000000000"
  "Repeated single digit:1111111111"
  "SQL injection probe:' OR '1'='1"
  "XSS probe:<script>alert(1)</script>"
  "Null byte injection:01012345678%00"
  "Floating point number:010.1234567"
  "Unicode / Arabic digits:٠١٠١٢٣٤٥٦٧٨"
  "Emoji characters:📱📞12345678"
)

echo "Starting Phone Validation Test Suite (${#test_cases[@]} tests)..."
echo "=================================================================="

run_number=1

for test in "${test_cases[@]}"; do
  # Extract description and payload
  desc="${test%%:*}"
  phone_val="${test#*:}"

  echo "[Run #${run_number}] Testing: ${desc} | Value: '${phone_val}'"

  # Execute request and capture HTTP status + response body
  response=$(curl --silent --write-out "\nHTTP_STATUS:%{http_code}" \
    --location \
    --request POST "${BASE_URL}/employees" \
    --header "Authorization: Bearer ${AUTH_TOKEN}" \
    --header "Accept: application/json" \
    --form "name=employee-test-${run_number}" \
    --form "email=employee-test-${run_number}@mail.com" \
    --form "password=Admin#123" \
    --form "phone=${phone_val}" \
    --form "photo=@${PHOTO_PATH}" \
    --form "job_title=eng" \
    --form "overview=Test overview")

  http_body=$(echo "$response" | sed -e '$d')
  http_status=$(echo "$response" | tail -n1 | sed -e 's/HTTP_STATUS://')

  echo "Status: ${http_status}"
  echo "Response: $(echo "$http_body" | jq -c . 2>/dev/null || echo "$http_body")"
  echo -e "------------------------------------------------------------------\n\n"

  ((run_number++))
done
```

---
*Last Updated: 2026-08-23 10:00:00*