---
tc_id: TC-API-DASH-EMP-GET-016
title: Get Employees With Valid Page
priority: High
status:
  - completed
type: Functional
linked_requirement: REQ-DASH-EMP-016
tags:
  - test-case
  - api
  - dashboard
  - employees
  - pagination
  - page
  - positive
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | GET https://seyanty.info/api/dashboard/employees |
| Authentication | Bearer <valid_token> |
| Query Parameters | pagination=on, limit=5, page=2, status= |
| Content-Type | application/json |

# Preconditions
- Valid authentication token
- Database contains 9 employee records
- Pagination enabled with limit=5 (creates 2 pages)
- Page 2 exists and has records

# Steps
1. Prepare valid Bearer token
2. Construct GET request with `page=2` and `limit=5`
3. Include `pagination=on`
4. Execute request with Authorization header
5. Capture response and verify page 2 data
6. Verify pagination metadata for page 2

# Expected Result
**HTTP Status Code:** 200 OK

**Response Body - Data:**
- Data array contains 4 employee objects (records 5-9, since limit=5, page=2)

**Response Body - Pagination:**
```json
"pagination": {
    "current_page": 2,
    "per_page": 5,
    "total": 9,
    "last_page": 2,
    "next_page_url": null,
    "prev_page_url": "https://seyanty.info/api/dashboard/employees?pagination=on&limit=5&page=1",
    "hasMorePages": false,
    "hasPages": true,
    "isEmpty": false,
    "isNotEmpty": true
}
```

**Validation Checks:**
- Data array length = 4 (remaining records)
- `current_page` = 2
- `prev_page_url` points to page 1
- `next_page_url` = null (last page)
- `hasMorePages` = false
- Records are correct subset (not page 1 records)

# Notes
- Tests valid page navigation to second page
- Verifies prev/next URLs work correctly
- Data should be consistent ordering (typically ID desc)
- Complements TC-009 which tests page 1

# Attachments
- cURL with page=2, limit=5
- Expected page 2 response

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
get_employees "$AUTH_TOKEN" "pagination=on&limit=5&page=2" | jq .

```
---

*Last Updated: 2026-08-23*