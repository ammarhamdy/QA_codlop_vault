---
tc_id: TC-API-DASH-EMP-GET-015
title: Get Employees With Non-Numeric Limit
priority: Medium
status:
  - completed
type: Functional
linked_requirement: REQ-DASH-EMP-015
tags:
  - test-case
  - api
  - dashboard
  - employees
  - pagination
  - limit
  - validation
  - negative
run_result: fail
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | GET https://seyanty.info/api/dashboard/employees |
| Authentication | Bearer <valid_token> |
| Query Parameters | pagination=on, limit=abc, page=1, status= |
| Content-Type | application/json |
| Non-Numeric Values | "abc", "10.5", "1e3", "Infinity", "NaN", "ten" |

# Preconditions
- Valid authentication token
- API validates limit parameter as integer
- Pagination is enabled

# Steps
1. Prepare valid Bearer token
2. Construct GET request with non-numeric `limit=abc`
3. Include `pagination=on&page=1`
4. Execute request with Authorization header
5. Capture response status code and body
6. Verify non-numeric limit handling

# Expected Result
**HTTP Status Code:** 400 Bad Request OR 422 Unprocessable Entity OR 200 with default limit

**Response Body (Validation Error):**
```json
{
    "status": "error",
    "code": 400,
    "message": "The limit must be an integer.",
    "data": null
}
```
OR (Graceful Fallback):
```json
{
    "status": "success",
    "code": 200,
    "message": "success",
    "data": [...],
    "pagination": { "per_page": 100, ... }
}
```

**Validation Checks:**
- If validation error: clear message about integer requirement
- If fallback: uses default limit, returns valid data
- No 500 server error
- Input safely sanitized or rejected

# Notes
- Similar to TC-012 but focuses on various non-numeric formats
- Tests type coercion and validation robustness
- Floats, scientific notation, strings all treated as invalid
- Consistent behavior with other invalid limit tests

# Attachments
- cURL with various non-numeric limits
- Expected responses

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
get_employees "$AUTH_TOKEN" "pagination=on&limit=abc&page=1" | jq

```
---

*Last Updated: 2026-08-23*