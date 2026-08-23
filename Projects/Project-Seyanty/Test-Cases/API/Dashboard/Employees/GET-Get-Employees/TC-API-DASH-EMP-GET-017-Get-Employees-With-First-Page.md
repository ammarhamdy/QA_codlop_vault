---
tc_id: TC-API-DASH-EMP-GET-017
title: Get Employees With First Page
priority: Medium
status:
  - completed
type: Functional
linked_requirement: REQ-DASH-EMP-017
tags:
  - test-case
  - api
  - dashboard
  - employees
  - pagination
  - page
  - boundary
  - positive
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | GET https://seyanty.info/api/dashboard/employees |
| Authentication | Bearer <valid_token> |
| Query Parameters | pagination=on, limit=5, page=1, status= |
| Content-Type | application/json |

# Preconditions
- Valid authentication token
- Database contains 9 employee records
- Pagination enabled with limit=5
- Page 1 is the first page

# Steps
1. Prepare valid Bearer token
2. Construct GET request with `page=1` (explicit first page)
3. Include `pagination=on&limit=5`
4. Execute request with Authorization header
5. Capture response and verify first page data
6. Verify pagination metadata for first page

# Expected Result
**HTTP Status Code:** 200 OK

**Response Body - Data:**
- Data array contains 5 employee objects (first 5 records)

**Response Body - Pagination:**
```json
"pagination": {
    "current_page": 1,
    "per_page": 5,
    "total": 9,
    "last_page": 2,
    "next_page_url": "https://seyanty.info/api/dashboard/employees?pagination=on&limit=5&page=2",
    "prev_page_url": null,
    "hasMorePages": true,
    "hasPages": true,
    "isEmpty": false,
    "isNotEmpty": true
}
```

**Validation Checks:**
- `current_page` = 1
- `prev_page_url` = null (no previous page)
- `next_page_url` provided for page 2
- `hasMorePages` = true
- First 5 records returned (consistent ordering)

# Notes
- Boundary test for first page (page=1)
- Explicit page=1 should behave same as omitted page parameter
- Prev URL should be null
- Next URL should be provided

# Attachments
- cURL with page=1, limit=5
- Expected first page response

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
get_employees "$AUTH_TOKEN" "pagination=on&limit=5&page=1" | jq .

```
---

*Last Updated: 2026-08-23*