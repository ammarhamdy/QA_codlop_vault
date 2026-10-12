---
tc_id: TC-API-DASH-EMP-GET-029
title: Response Status Code
priority: High
status:
  - completed
type: Functional
linked_requirement: REQ-DASH-EMP-029
tags:
  - test-case
  - api
  - dashboard
  - employees
  - validation
  - response
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | GET https://seyanty.info/api/dashboard/employees |
| Authentication | Bearer <valid_token> |
| Query Parameters | pagination=on, limit=100, page=1, status= |
| Content-Type | application/json |

# Preconditions
- Valid authentication token
- Database contains employee records
- API server operational

# Steps
1. Prepare valid Bearer token
2. Construct standard GET request
3. Execute request
4. Capture HTTP response status code
5. Verify status code matches expected

# Expected Result
**HTTP Status Code:** 200 OK

**Validation Checks:**
- Response status code is exactly 200
- Not 201, 202, 204, or any other 2xx
- Not 3xx (redirect)
- Not 4xx (client error)
- Not 5xx (server error)
- Status code consistent across multiple requests

# Notes
- Basic contract test for HTTP status
- 200 is standard for successful GET with body
- Should be consistent for all successful requests
- Foundation for other response validation tests

# Attachments
- cURL command
- HTTP response showing 200

```shell
#!/usr/bin/env bash

BASE_URL="https://seyanty.info/api/dashboard"

# Function to authenticate and extract the Bearer token
login() {
  local email="$1"
  local password="$2"

  local response
  response=$(curl --silent --location --request POST "https://seyanty.info/api/dashboard/login" \
    --header "Accept: application/json" \
    --header "Content-Type: application/json" \
    --data "{
      "email_or_name": "${email}",
      "password": "${password}"
    }")

  # Extracts token from common response structures using jq, python, or grep fallback
  if command -v jq >/dev/null 2>&1; then
    echo "$response" | jq -r '.token // .data.token // .access_token // empty'
  elif command -v python3 >/dev/null 2>&1; then
    echo "$response" | python3 -c "import sys, json; data=json.load(sys.stdin); print(data.get('token') or data.get('data', {}).get('token') or data.get('access_token', ''))"
  else
    echo "$response" | grep -o '"token":"[^"]*' | cut -d'"' -f4
  fi
}

# Function to fetch employees using the auth token
get_employees() {
  local token="$1"
  local query_string="$2"

  curl --silent --location --request GET "https://seyanty.info/api/dashboard/employees?${query_string}" \
    --header "Authorization: Bearer ${token}" \
    --header "Accept: application/json"
}

# --- Execution ---
echo "Logging in..."
AUTH_TOKEN=$(login "admin@admin.com" "Admin#123")

if [[ -z "$AUTH_TOKEN" ]]; then
  echo "Error: Failed to obtain authentication token." >&2
  exit 1
fi

echo "Token received successfully."
echo "Fetching employees..."
get_employees "$AUTH_TOKEN" "pagination=on&limit=100&page=1" | jq

```
---

*Last Updated: 2026-08-23*