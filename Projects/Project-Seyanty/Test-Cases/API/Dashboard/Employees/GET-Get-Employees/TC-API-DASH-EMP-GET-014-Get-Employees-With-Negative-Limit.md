---
tc_id: TC-API-DASH-EMP-GET-014
title: Get Employees With Negative Limit
priority: Medium
status:
  - completed
type: Functional
linked_requirement: REQ-DASH-EMP-014
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
| Query Parameters | pagination=on, limit=-10, page=1, status= |
| Content-Type | application/json |

# Preconditions
- Valid authentication token
- Database contains employee records
- API validates limit parameter for positive values

# Steps
1. Prepare valid Bearer token
2. Construct GET request with `limit=-10` (negative value)
3. Include `pagination=on&page=1`
4. Execute request with Authorization header
5. Capture response status code and body
6. Verify negative limit rejection

# Expected Result
**HTTP Status Code:** 400 Bad Request OR 422 Unprocessable Entity

**Response Body:**
```json
{
    "status": "error",
    "code": 400,
    "message": "The limit must be a positive integer.",
    "data": null
}
```

**Validation Checks:**
- Response status is "error"
- Response code is 400 or 422
- Error message indicates limit must be positive
- No data returned
- No server error (500)

# Notes
- Boundary test for negative limit values
- Negative limits make no logical sense for pagination
- Should be rejected at validation layer
- Consistent with zero limit handling

# Attachments
- cURL with limit=-10
- Expected validation error

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
get_employees "$AUTH_TOKEN" "pagination=on&limit=-1&page=1" | jq .

```
---

*Last Updated: 2026-08-23*