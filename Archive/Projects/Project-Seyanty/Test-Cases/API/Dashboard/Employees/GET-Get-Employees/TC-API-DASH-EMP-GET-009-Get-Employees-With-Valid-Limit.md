---
tc_id: TC-API-DASH-EMP-GET-009
title: Get Employees With Valid Limit
priority: High
status:
  - completed
type: Functional
linked_requirement: REQ-DASH-EMP-009
tags:
  - test-case
  - api
  - dashboard
  - employees
  - pagination
  - limit
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
- Pagination is enabled
- Limit parameter accepts positive integers

# Steps
1. Prepare valid Bearer token
2. Construct GET request with `limit=5` (valid limit < total records)
4. Include `pagination=on&page=1`
5. Execute request with Authorization header
6. Capture response and verify data count matches limit
7. Verify pagination metadata reflects limit

# Expected Result
**HTTP Status Code:** 200 OK

**Response Body - Data:**
- Data array contains exactly 5 employee objects (first page, limit=5)

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
- Data array length = 5 (matches limit)
- `per_page` = 5 in pagination
- `total` = 9 (total records)
- `last_page` = 2 (ceil(9/5))
- `hasMorePages` = true
- `next_page_url` points to page 2
- `prev_page_url` = null (first page)
- Employee objects are complete with all fields

# Notes
- Tests limit parameter with valid value less than total records
- Verifies pagination correctly calculates pages based on limit
- Next page URL should be provided for client navigation
- Data should be ordered consistently (typically by ID descending)

# Attachments
- cURL with limit=5
- Expected paginated response

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