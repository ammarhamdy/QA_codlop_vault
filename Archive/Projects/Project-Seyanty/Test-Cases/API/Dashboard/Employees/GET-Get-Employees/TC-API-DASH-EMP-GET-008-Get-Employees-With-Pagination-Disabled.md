---
tc_id: TC-API-DASH-EMP-GET-008
title: Get Employees With Pagination Disabled
priority: Medium
status:
  - completed
type: Functional
linked_requirement: REQ-DASH-EMP-008
tags:
  - test-case
  - api
  - dashboard
  - employees
  - pagination
  - positive
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | GET https://seyanty.info/api/dashboard/employees |
| Authentication | Bearer <valid_token> |
| Query Parameters | pagination=off, limit=100, page=1, status= |
| Content-Type | application/json |

# Preconditions
- Valid authentication token
- Database contains employee records
- API supports `pagination=off` parameter to return all records without pagination metadata

# Steps
1. Prepare valid Bearer token
2. Construct GET request with `pagination=off` parameter
3. Execute request with Authorization header
4. Capture response and verify structure
5. Validate that pagination object is absent or different
6. Verify all employee records returned in data array

# Expected Result
**HTTP Status Code:** 200 OK

**Response Body:**
```json
{
    "status": "success",
    "code": 200,
    "message": "success",
    "data": [
        // All 9 employee objects without pagination wrapper
    ]
}
```
OR (if pagination object still present but different):
```json
{
    "status": "success",
    "code": 200,
    "message": "success",
    "data": [...],
    "pagination": null
}
```

**Validation Checks:**
- Response status is "success"
- All 9 employee records returned in data array
- No pagination metadata (or pagination is null/empty)
- Response is not wrapped in pagination structure
- Data array contains complete employee objects

# Notes
- Tests pagination disable functionality
- Useful for exporting all records or small datasets
- API behavior may vary: either omit pagination object entirely or return null
- Should return all records regardless of count when pagination=off

# Attachments
- cURL with pagination=off
- Expected response structure

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
get_employees "$AUTH_TOKEN" "pagination=off&limit=100&page=1" | jq .
```
---

*Last Updated: 2026-08-23*