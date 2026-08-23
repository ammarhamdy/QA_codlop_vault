---
tc_id: TC-API-DASH-EMP-GET-026
title: Filter With Invalid Status
priority: Medium
status:
  - completed
type: Functional
linked_requirement: REQ-DASH-EMP-026
tags:
  - test-case
  - api
  - dashboard
  - employees
  - filter
  - status
  - negative
  - validation
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | GET https://seyanty.info/api/dashboard/employees |
| Authentication | Bearer <valid_token> |
| Query Parameters | pagination=on, limit=100, page=1, status=invalid |
| Content-Type | application/json |
| Invalid Status Values | "invalid", "pending", "archived", "deleted", "activee", "inactivee", "123", "" |

# Preconditions
- Valid authentication token
- Database contains employees with only "active" and "inactive" statuses
- API validates status parameter against allowed values

# Steps
1. Prepare valid Bearer token
2. Construct GET request with invalid `status=invalid`
3. Include `pagination=on&limit=100&page=1`
4. Execute request with Authorization header
5. Capture response status code and body
6. Verify invalid status handling

# Expected Result
**HTTP Status Code:** 400 Bad Request OR 422 Unprocessable Entity OR 200 with empty/all results

**Response Body (Validation Error):**
```json
{
    "status": "error",
    "code": 400,
    "message": "The selected status is invalid.",
    "data": null
}
```
OR (Empty Result - 200):
```json
{
    "status": "success",
    "code": 200,
    "message": "success",
    "data": [],
    "pagination": { "total": 0, "isEmpty": true, ... }
}
```
OR (Ignore Filter - 200):
```json
{
    "status": "success",
    "code": 200,
    "message": "success",
    "data": [...all 9 employees...],
    "pagination": { "total": 9, ... }
}
```

**Validation Checks:**
- If validation error: clear message about invalid status
- If empty result: returns empty array, total=0
- If ignores filter: returns all employees (less secure)
- No 500 server error
- Behavior consistent and documented

# Notes
- Tests status filter validation
- API may reject invalid values, return empty, or ignore filter
- Rejection (400) is most secure and explicit
- Empty result (200) is acceptable for "no matches"
- Ignoring filter may leak data but maintains compatibility

# Attachments
- cURL with various invalid statuses
- Expected responses

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
get_employees "$AUTH_TOKEN" "pagination=on&limit=100&page=1&status=activee" | jq .

```
---

*Last Updated: 2026-08-23*