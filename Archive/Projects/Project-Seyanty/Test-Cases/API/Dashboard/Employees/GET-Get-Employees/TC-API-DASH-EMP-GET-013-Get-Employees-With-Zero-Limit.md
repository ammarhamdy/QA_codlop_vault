---
tc_id: TC-API-DASH-EMP-GET-013
title: Get Employees With Zero Limit
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
  - pagination
  - limit
  - boundary
  - negative
run_result: fail
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | GET https://seyanty.info/api/dashboard/employees |
| Authentication | Bearer <valid_token> |
| Query Parameters | pagination=on, limit=0, page=1, status= |
| Content-Type | application/json |

# Preconditions
- Valid authentication token
- Database contains employee records
- API handles zero limit edge case

# Steps
1. Prepare valid Bearer token
2. Construct GET request with `limit=0`
3. Include `pagination=on&page=1`
4. Execute request with Authorization header
5. Capture response status code and body
6. Verify zero limit handling

# Expected Result
**HTTP Status Code:** 400 Bad Request OR 200 with empty data

**Response Body (Validation Error):**
```json
{
    "status": "error",
    "code": 400,
    "message": "The limit must be at least 1.",
    "data": null
}
```
OR (Empty Result):
```json
{
    "status": "success",
    "code": 200,
    "message": "success",
    "data": [],
    "pagination": {
        "current_page": 1,
        "per_page": 0,
        "total": 9,
        "last_page": 0,
        "isEmpty": true,
        "isNotEmpty": false
    }
}
```

**Validation Checks:**
- If error: clear validation message about minimum limit
- If success with empty data: pagination reflects zero limit
- No server crash or 500 error
- Behavior is consistent and documented

# Notes
- Edge case test for zero limit
- Zero limit may be invalid (min 1) or return empty result
- Pagination metadata should be consistent (last_page=0, isEmpty=true)
- Important for preventing division-by-zero in pagination calculations

# Attachments
- cURL with limit=0
- Expected response

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
get_employees "$AUTH_TOKEN" "pagination=on&limit=0&page=1" | jq .

```
---

*Last Updated: 2026-08-23*