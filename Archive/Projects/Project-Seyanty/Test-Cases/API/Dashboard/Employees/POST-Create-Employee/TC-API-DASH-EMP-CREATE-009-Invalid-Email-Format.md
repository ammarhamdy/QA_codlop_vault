---
tc_id: TC-API-DASH-EMP-CREATE-009
title: Invalid Email Format
priority: High
status:
  - completed
type: Functional
linked_requirement: REQ-DASH-EMP-006
tags:
  - test-case
  - api
  - dashboard
  - employees
  - create
  - negative
  - validation
run_result: fail
---

# Test Data
| Field | Value |
| ----- | ----- |
| name | employee-10 |
| email | invalid-email |
| password | Admin#123 |
| phone | 0500000110 |
| job_title | eng |
| overview | Test overview |
| photo | /home/am/Pictures/profile/male/79ad7b7a-99da-4e20-962d-1e9fc405312b.jpeg |

# Preconditions
- Valid authentication token (Bearer token) available for admin user
- Database is in clean state
- API server is running and accessible at https://seyanty.info

# Steps
1. Prepare multipart/form-data request with invalid email format (missing @, missing domain, etc.)
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
    "message": "صيغة البريد الإلكتروني غير صحيحة",
    "data": {
        "email": ["يجب أن يكون البريد الإلكتروني بصيغة صحيحة."]
    }
}
```
- **Database Assertions:** No employee record created

# Notes
- Email validation should follow RFC 5322 standard
- Test with various invalid formats: missing @, missing domain, spaces, special characters
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

# Test cases covering invalid email formats
test_cases=(
  "Empty email::"
  "Plain text with no symbols:plainaddress"
  "Missing @ and domain:missingatsign.com"
  "Missing username:@missingusername.com"
  "Missing domain:username@"
  "Missing top level domain:username@domain"
  "Multiple @ signs:user@name@domain.com"
  "Spaces in middle:user name@domain.com"
  "Leading space: user@domain.com"
  "Trailing space:user@domain.com "
  "Double dots in domain:user@domain..com"
  "Double dots in user:user..name@domain.com"
  "Leading dot in user:.username@domain.com"
  "Trailing dot in user:username.@domain.com"
  "Special characters in domain:user@dom#ain.com"
  "Invalid TLD format:user@domain.c"
  "IP address missing brackets:user@127.0.0.1"
  "Unicode without punycode:üñîçøðé@domain.com"
  "HTML / XSS tag:<test>@domain.com"
  "SQL injection snippet:' OR '1'='1'@domain.com"
)

echo "Starting Email Validation Test Suite (${#test_cases[@]} tests)..."
echo "=================================================================="

run_number=1

for test in "${test_cases[@]}"; do
  desc="${test%%:*}"
  email_val="${test#*:}"

  echo "[Run #${run_number}] Testing: ${desc} | Value: '${email_val}'"

  # Use --form-string to prevent curl from misinterpreting symbols (<, @) as file inputs
  form_args=(
    --form-string "name=employee-test-${run_number}"
    --form-string "email=${email_val}"
    --form-string "password=Admin#123"
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
  echo -e "------------------------------------------------------------------\n\n"

  ((run_number++))
done
```

---
*Last Updated: 2026-08-23 10:00:00*