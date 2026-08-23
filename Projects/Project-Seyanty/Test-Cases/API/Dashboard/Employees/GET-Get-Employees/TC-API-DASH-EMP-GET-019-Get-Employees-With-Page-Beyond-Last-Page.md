---
tc_id: TC-API-DASH-EMP-GET-019
title: Get Employees With Page Beyond Last Page
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
  - pagination
  - page
  - boundary
  - negative
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | GET https://seyanty.info/api/dashboard/employees |
| Authentication | Bearer <valid_token> |
| Query Parameters | pagination=on, limit=5, page=5, status= |
| Content-Type | application/json |

# Preconditions
- Valid authentication token
- Database contains 9 employee records
- Pagination enabled with limit=5 (last page = 2)
- Requesting page 5 which doesn't exist

# Steps
1. Prepare valid Bearer token
2. Construct GET request with `page=5` (beyond last page)
3. Include `pagination=on&limit=5`
4. Execute request with Authorization header
5. Capture response status code and body
6. Verify out-of-bounds page handling

# Expected Result
**HTTP Status Code:** 200 OK with empty data OR 404 Not Found

**Response Body (Empty Data - 200):**
```json
{
    "status": "success",
    "code": 200,
    "message": "success",
    "data": [],
    "pagination": {
        "current_page": 5,
        "per_page": 5,
        "total": 9,
        "last_page": 2,
        "next_page_url": null,
        "prev_page_url": "https://seyanty.info/api/dashboard/employees?pagination=on&limit=5&page=4",
        "hasMorePages": false,
        "hasPages": true,
        "isEmpty": true,
        "isNotEmpty": false
    }
}
```
OR
```json
{
    "status": "error",
    "code": 404,
    "message": "Not Found",
    "data": null
}
```

**Validation Checks:**
- If 200: data array is empty, `isEmpty`=true, `current_page`=5, `last_page`=2
- If 404: clear not found error
- No 500 server error
- Pagination metadata still accurate (last_page=2)

# Notes
- Edge case: requesting page beyond total pages
- API may return empty result (200) or 404
- Both acceptable if consistent
- Pagination metadata should reflect actual last_page (2), not requested page
- Important for client-side pagination controls

# Attachments
- cURL with page=5, limit=5
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
get_employees "$AUTH_TOKEN" "pagination=on&limit=5&page=5" | jq .

```
---

*Last Updated: 2026-08-23*