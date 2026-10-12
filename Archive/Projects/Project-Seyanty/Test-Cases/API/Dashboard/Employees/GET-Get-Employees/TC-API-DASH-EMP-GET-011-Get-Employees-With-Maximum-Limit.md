---
tc_id: TC-API-DASH-EMP-GET-011
title: Get Employees With Maximum Limit
priority: Medium
status:
  - completed
type: Functional
linked_requirement: REQ-DASH-EMP-011
tags:
  - test-case
  - api
  - dashboard
  - employees
  - pagination
  - limit
  - boundary
  - positive
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
- Database contains 9 employee records
- Maximum allowed limit is 100 (or API configured maximum)
- Pagination is enabled

# Steps
1. Prepare valid Bearer token
2. Construct GET request with `limit=100` (maximum valid limit)
3. Include `pagination=on&page=1`
4. Execute request with Authorization header
5. Capture response and verify all records returned
6. Verify pagination metadata for limit=100

# Expected Result
**HTTP Status Code:** 200 OK

**Response Body - Data:**
- Data array contains all 9 employee objects (since 9 < 100)

**Response Body - Pagination:**
```json
"pagination": {
    "current_page": 1,
    "per_page": 100,
    "total": 9,
    "last_page": 1,
    "next_page_url": null,
    "prev_page_url": null,
    "hasMorePages": false,
    "hasPages": false,
    "isEmpty": false,
    "isNotEmpty": true
}
```

**Validation Checks:**
- Data array length = 9 (all records, since total < limit)
- `per_page` = 100
- `last_page` = 1 (all fit in one page)
- `hasMorePages` = false
- `next_page_url` = null
- All employee objects complete

# Notes
- Boundary test for maximum limit value
- With 9 records and limit=100, single page contains all data
- Tests API behavior when limit exceeds total record count
- Maximum limit may be configurable (100, 500, 1000, etc.)

# Attachments
- cURL with limit=100
- Expected response with all records

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
get_employees "$AUTH_TOKEN" "pagination=on&limit=100&page=1" | jq .
```
---

*Last Updated: 2026-08-23*