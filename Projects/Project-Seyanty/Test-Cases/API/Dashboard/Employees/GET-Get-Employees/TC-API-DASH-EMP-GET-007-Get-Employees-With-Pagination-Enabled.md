---
tc_id: TC-API-DASH-EMP-GET-007
title: Get Employees With Pagination Enabled
priority: High
status:
  - completed
type: Functional
linked_requirement: REQ-DASH-EMP-007
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
| Query Parameters | pagination=on, limit=100, page=1, status= |
| Content-Type | application/json |

# Preconditions
- Valid authentication token
- Database contains 9 employee records
- Pagination feature is enabled and functional
- API supports `pagination=on` parameter

# Steps
1. Prepare valid Bearer token
2. Construct GET request with `pagination=on` parameter
3. Include standard pagination params: `limit=100&page=1`
4. Execute request with Authorization header
5. Capture response and verify pagination object structure
6. Validate pagination metadata accuracy

# Expected Result
**HTTP Status Code:** 200 OK

**Response Body - Pagination Object:**
```json
"pagination": {
    "current_page": 1,
    "first_page_url": 1,
    "last_page": 1,
    "last_page_url": 1,
    "next_page_url": null,
    "path": "https://seyanty.info/api/dashboard/employees",
    "per_page": 100,
    "prev_page_url": null,
    "total": 9,
    "isEmpty": false,
    "isNotEmpty": true,
    "hasMorePages": false,
    "hasPages": false
}
```

**Validation Checks:**
- `pagination` object exists in response
- `current_page` = 1
- `per_page` = 100 (matches limit parameter)
- `total` = 9 (total employees in database)
- `last_page` = 1 (all records fit in one page)
- `next_page_url` = null (no next page)
- `prev_page_url` = null (no previous page)
- `isEmpty` = false (data exists)
- `isNotEmpty` = true (data exists)
- `hasMorePages` = false (no more pages)
- `hasPages` = false (single page only)
- `path` matches request endpoint

# Notes
- Verifies pagination is enabled and working correctly
- With 9 records and limit=100, all data fits in single page
- Pagination metadata must be accurate for frontend consumption
- `first_page_url` and `last_page_url` appear as integers (1) not full URLs per API spec

# Attachments
- cURL with pagination=on
- Expected pagination object

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
get_employees "$AUTH_TOKEN" "pagination=on&limit=100&page=1" | jq

```
---

*Last Updated: 2026-08-23*