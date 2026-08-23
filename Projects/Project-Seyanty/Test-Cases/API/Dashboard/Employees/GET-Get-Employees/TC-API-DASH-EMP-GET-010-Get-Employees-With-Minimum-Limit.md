---
tc_id: TC-API-DASH-EMP-GET-010
title: Get Employees With Minimum Limit
priority: Medium
status:
  - completed
type: Functional
linked_requirement: REQ-DASH-EMP-010
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
| Query Parameters | pagination=on, limit=1, page=1, status= |
| Content-Type | application/json |

# Preconditions
- Valid authentication token
- Database contains 9 employee records
- Minimum allowed limit is 1 (or API default minimum)
- Pagination is enabled

# Steps
1. Prepare valid Bearer token
2. Construct GET request with `limit=1` (minimum valid limit)
3. Include `pagination=on&page=1`
4. Execute request with Authorization header
5. Capture response and verify single record returned
6. Verify pagination metadata for limit=1

# Expected Result
**HTTP Status Code:** 200 OK

**Response Body - Data:**
- Data array contains exactly 1 employee object

**Response Body - Pagination:**
```json
"pagination": {
    "current_page": 1,
    "per_page": 1,
    "total": 9,
    "last_page": 9,
    "next_page_url": "https://seyanty.info/api/dashboard/employees?pagination=on&limit=1&page=2",
    "prev_page_url": null,
    "hasMorePages": true,
    "hasPages": true,
    "isEmpty": false,
    "isNotEmpty": true
}
```

**Validation Checks:**
- Data array length = 1
- `per_page` = 1
- `last_page` = 9 (9 pages needed for 9 records at 1 per page)
- `hasMorePages` = true
- Next page URL provided
- Single employee object has all required fields

# Notes
- Boundary test for minimum limit value
- Verifies API handles extreme pagination (many pages)
- Useful for testing "load more" UI patterns
- Performance consideration: many pages = many requests

# Attachments
- cURL with limit=1
- Expected response with single record

```shell
#!/usr/bin/env bash

BASE_URL="https://seyanty.info/api/dashboard"

# Function to authenticate and extract the Bearer token
login() {
  local email="$1"
  local password="$2"

  local response
  response=$(curl --silent --location --request POST "https://seyanty.info/api/dashboard/login" \
    --header "Accept: application/json" \
    --header "Content-Type: application/json" \
    --data "{
      "email_or_name": "${email}",
      "password": "${password}"
    }")

  # Extracts token from common response structures using jq, python, or grep fallback
  if command -v jq >/dev/null 2>&1; then
    echo "$response" | jq -r '.token // .data.token // .access_token // empty'
  elif command -v python3 >/dev/null 2>&1; then
    echo "$response" | python3 -c "import sys, json; data=json.load(sys.stdin); print(data.get('token') or data.get('data', {}).get('token') or data.get('access_token', ''))"
  else
    echo "$response" | grep -o '"token":"[^"]*' | cut -d'"' -f4
  fi
}

# Function to fetch employees using the auth token
get_employees() {
  local token="$1"
  local query_string="$2"

  curl --silent --location --request GET "https://seyanty.info/api/dashboard/employees?${query_string}" \
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
get_employees "$AUTH_TOKEN" "pagination=on&limit=1&page=1" | jq

```
---

*Last Updated: 2026-08-23*