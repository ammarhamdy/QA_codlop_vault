---
tc_id: TC-API-DASH-EMP-GET-018
title: Get Employees With Last Page
priority: Medium
status:
  - completed
type: Functional
linked_requirement: REQ-DASH-EMP-018
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
| Query Parameters | pagination=on, limit=5, page=2, status= |
| Content-Type | application/json |

# Preconditions
- Valid authentication token
- Database contains 9 employee records
- Pagination enabled with limit=5 (last page = 2)
- Page 2 is the last page

# Steps
1. Prepare valid Bearer token
2. Construct GET request with `page=2` (last page)
3. Include `pagination=on&limit=5`
4. Execute request with Authorization header
5. Capture response and verify last page data
6. Verify pagination metadata for last page

# Expected Result
**HTTP Status Code:** 200 OK

**Response Body - Data:**
- Data array contains 4 employee objects (remaining records)

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
- `current_page` = 2 (equals last_page)
- `next_page_url` = null (no next page)
- `prev_page_url` provided for page 1
- `hasMorePages` = false
- `last_page` = 2
- Remaining 4 records returned

# Notes
- Boundary test for last page
- Next URL should be null
- Prev URL should be provided
- HasMorePages should be false

# Attachments
- cURL with page=2, limit=5
- Expected last page response

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
get_employees "$AUTH_TOKEN" "pagination=on&limit=5&page=2" | jq

```
---

*Last Updated: 2026-08-23*