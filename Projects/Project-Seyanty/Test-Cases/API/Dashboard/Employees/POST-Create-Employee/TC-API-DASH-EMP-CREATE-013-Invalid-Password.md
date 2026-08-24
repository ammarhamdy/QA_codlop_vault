---
tc_id: TC-API-DASH-EMP-CREATE-013
title: Invalid Password
priority: High
status:
  - completed
type: Functional
linked_requirement: REQ-DASH-EMP-009
tags:
  - test-case
  - api
  - dashboard
  - employees
  - create
  - negative
  - validation
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| name | employee-10 |
| email | employee-10@mail.com |
| password | 123 |
| phone | 0500000110 |
| job_title | eng |
| overview | Test overview |
| photo | /home/am/Pictures/profile/male/79ad7b7a-99da-4e20-962d-1e9fc405312b.jpeg |

# Preconditions
- Valid authentication token (Bearer token) available for admin user
- Database is in clean state
- API server is running and accessible at https://seyanty.info

# Steps
1. Prepare multipart/form-data request with invalid password (too short, missing complexity requirements)
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
    "message": "كلمة المرور غير صحيحة",
    "data": {
        "password": ["كلمة المرور يجب أن تكون 8 أحرف على الأقل وتحتوي على أحرف كبيرة وصغيرة وأرقام ورموز."]
    }
}
```
- **Database Assertions:** No employee record created

# Notes
- Password policy: minimum 8 characters, at least one uppercase, one lowercase, one number, one special character
- Test with various invalid passwords: too short, missing complexity, only numbers, only letters
- Error message is in Arabic as per API localization

# Attachments/Script
```bash
#!/usr/bin/env bash

set -euo pipefail

BASE_URL="https://seyanty.info/api/dashboard"
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

if [[ -z "$AUTH_TOKEN" ]]; then
  echo "Error: Failed to obtain authentication token." >&2
  exit 1
fi
echo "Token received successfully."

# Test cases covering typical password validation criteria
# (length, casing, digits, special characters, whitespace, injections)
test_cases=(
  "Empty string::"
  "Too short (1 char):1"
  "Too short (3 chars):123"
  "Too short (5 chars):Ab1!"
  "Too short (7 chars):Abc123!"
  "Too long (129+ chars):$(printf 'A1!%0.s' {1..45})"
  "Only lowercase:password"
  "Only uppercase:PASSWORD"
  "Only numbers:12345678"
  "Only special characters:!@#$%^&*()"
  "Missing uppercase:admin#123"
  "Missing lowercase:ADMIN#123"
  "Missing number:Admin#abc"
  "Missing special char:Admin1234"
  "Only whitespace:        "
  "Leading whitespace: Admin#123"
  "Trailing whitespace:Admin#123 "
  "Spaces in middle:Admin #123"
  "Common weak password:Password123!"
  "SQL injection attempt:' OR '1'='1"
  "HTML / XSS attempt:<script>alert(1)</script>"
  "Null byte injection:Admin#123%00"
  "Unicode / Emoji:Admin#123🔒"
)

echo "Starting Password Validation Test Suite (${#test_cases[@]} tests)..."
echo "=================================================================="

run_number=1

for test in "${test_cases[@]}"; do
  desc="${test%%:*}"
  pass_val="${test#*:}"

  echo "[Run #${run_number}] Testing: ${desc} | Password: '${pass_val}'"

  form_args=(
    --form-string "name=employee-test-${run_number}"
    --form-string "email=employee-test-${run_number}@mail.com"
    --form-string "password=${pass_val}"
    --form-string "phone=0500000${run_number}"
    --form-string "job_title=eng"
    --form-string "overview=Test overview"
  )

  if [[ -f "$PHOTO_PATH" ]]; then
    form_args+=(--form "photo=@${PHOTO_PATH}")
  fi

  response=$(curl --silent --write-out "\nHTTP_STATUS:%{http_code}" \
    --location \
    --request POST "${BASE_URL}/employees" \
    --header "Authorization: Bearer ${AUTH_TOKEN}" \
    --header "Accept: application/json" \
    "${form_args[@]}")

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