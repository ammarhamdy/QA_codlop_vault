---
tc_id: TC-API-DASH-EMP-CREATE-025
title: Invalid HTTP Method
priority: High
status:
  - completed
type: Functional
linked_requirement: REQ-DASH-EMP-019
tags:
  - test-case
  - api
  - dashboard
  - employees
  - create
  - negative
  - http-method
run_result: pass
---

# Test Data
| Field     | Value                                                                    |
| --------- | ------------------------------------------------------------------------ |
| name      | employee-10                                                              |
| email     | employee-10@mail.com                                                     |
| password  | Admin#123                                                                |
| phone     | 0500000110                                                               |
| job_title | eng                                                                      |
| overview  | Test overview                                                            |
| photo     | /home/am/Pictures/profile/male/79ad7b7a-99da-4e20-962d-1e9fc405312b.jpeg |

# Preconditions
- Valid authentication token (Bearer token) available for admin user
- Database is in clean state
- API server is running and accessible at https://seyanty.info

# Steps
1. Prepare request with valid employee data
2. Set Authorization header with valid Bearer token
3. Send GET request to https://seyanty.info/api/dashboard/employees
4. Capture response status code, headers, and body
5. Repeat for PUT, PATCH, DELETE methods

# Expected Result
- **HTTP Status Code:** 405 Method Not Allowed
- **Response Headers:** Content-Type: application/json, Allow: POST
- **Response Body:**
```json
{
    "status": "error",
    "code": 405,
    "message": "الطريقة غير مسموحة",
    "data": null
}
```
- **Database Assertions:** No employee record created

# Notes
- Only POST method should be allowed for this endpoint
- Error message is in Arabic as per API localization
- Allow header should indicate POST as allowed method

# Attachments/Script
```bash
#!/usr/bin/env bash

set -euo pipefail

BASE_URL="https://seyanty.info/api/dashboard"

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

# Standard and extended HTTP methods to test endpoint behavior (expecting 405 Method Not Allowed or 200/201 where applicable)
http_methods=(
  "GET"
  "POST"
  "PUT"
  "PATCH"
  "DELETE"
  "HEAD"
  "OPTIONS"
  "TRACE"
  "CONNECT"
  "PURGE"
  "PROPFIND"
  "INVALIDMETHOD"
)

echo "Starting HTTP Methods Test Suite on ${BASE_URL}/employees (${#http_methods[@]} methods)..."
echo "==================================================================" 
run_number=1

for method in "${http_methods[@]}"; do 
echo "[Run #${run_number}] Testing HTTP Method: ${method}"

  # Default form arguments for mutation/body-supporting requests
  form_args=(
    --form-string "name=employee-method-${run_number}"
    --form-string "email=employee-method-${run_number}@mail.com"
    --form-string "password=Admin#123"
    --form-string "phone=0500000${run_number}"
    --form-string "job_title=eng"
  )
  
  if [[ "$method" == "HEAD" || "$method" == "TRACE" || "$method" == "CONNECT" ]]; then
	  response=$(curl --silent --show-error --write-out "\nHTTP_STATUS:%{http_code}" \
      --location \
      --request "${method}" "${BASE_URL}/employees" \
      --header "Authorization: Bearer ${AUTH_TOKEN}" \
      --header "Accept: application/json")
  else
    response=$(curl --silent --show-error --write-out "\nHTTP_STATUS:%{http_code}" \
      --location \
      --request "${method}" "${BASE_URL}/employees" \
      --header "Authorization: Bearer ${AUTH_TOKEN}" \
      --header "Accept: application/json" \
      "${form_args[@]}")
  fi
  
  http_body=$(echo "$response" | sed -e '$d')
  http_status=$(echo "$response" | tail -n1 | sed -e 's/HTTP_STATUS://')

  echo "Status: ${http_status}"
  if [[ -n "$http_body" ]]; then
    echo "Response: $(echo "$http_body" | jq -c . 2>/dev/null || echo "$http_body")"
  else
    echo "Response: [Empty Body]"
  fi
  echo -e "\n\n"

  ((run_number++))
done
```

---
*Last Updated: 2026-08-23 10:00:00*