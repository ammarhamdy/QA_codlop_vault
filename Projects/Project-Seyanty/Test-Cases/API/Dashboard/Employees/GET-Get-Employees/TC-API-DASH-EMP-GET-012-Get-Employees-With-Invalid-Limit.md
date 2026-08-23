---
tc_id: TC-API-DASH-EMP-GET-012
title: Get Employees With Invalid Limit
priority: High
status:
  - completed
type: Functional
linked_requirement: REQ-DASH-EMP-012
tags:
  - test-case
  - api
  - dashboard
  - employees
  - pagination
  - limit
  - negative
  - validation
run_result: fail
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | GET https://seyanty.info/api/dashboard/employees |
| Authentication | Bearer <valid_token> |
| Query Parameters | pagination=on, limit=abc, page=1, status= |
| Content-Type | application/json |
| Invalid Limit Values | "abc", "10.5", "100abc", "!@#", "null", "undefined" |

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
6. Verify validation error handling

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
OR (Graceful fallback to default):
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
- If validation error: status "error", code 400/422, descriptive message
- If fallback: status "success", uses default limit (100), returns data
- No server error (500) or crash
- Invalid input safely rejected or sanitized

# Notes
- Tests input validation for limit parameter
- API may reject invalid input (400/422) or gracefully fallback to default
- Both behaviors acceptable if consistent and documented
- Should not expose stack traces or internal errors

# Attachments
- cURL with invalid limit values
- Expected error or fallback responses

```shell
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

# Fetch employees using the auth token
get_employees() {
  local token="$1"
  local query_string="${2:-}"

  curl --silent --show-error --location --request GET "${BASE_URL}/employees?${query_string}" \
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
get_employees "$AUTH_TOKEN" "pagination=on&limit=abc&page=1" | jq .

```
---

*Last Updated: 2026-08-23*