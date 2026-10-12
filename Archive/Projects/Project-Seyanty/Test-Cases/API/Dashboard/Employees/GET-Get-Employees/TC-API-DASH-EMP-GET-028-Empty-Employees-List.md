---
tc_id: TC-API-DASH-EMP-GET-028
title: Empty Employees List
priority: Medium
status:
  - completed
type: Functional
linked_requirement: REQ-DASH-EMP-028
tags:
  - test-case
  - api
  - dashboard
  - employees
  - edge-case
  - positive
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | GET https://seyanty.info/api/dashboard/employees |
| Authentication | Bearer <valid_token> |
| Query Parameters | pagination=on, limit=100, page=1, status=active (or filter that matches no records) |
| Content-Type | application/json |

# Preconditions
- Valid authentication token
- Database state: no employees match the filter (e.g., all employees deleted, or filter matches zero)
- OR test with status filter that returns no results in current dataset

# Steps
1. Prepare valid Bearer token
2. Ensure database has zero employees (or use filter with no matches)
3. Construct GET request with parameters that yield empty result
4. Execute request with Authorization header
5. Capture response and verify empty data handling
6. Validate pagination metadata for empty state

# Expected Result
**HTTP Status Code:** 200 OK

**Response Body:**
```json
{
    "status": "success",
    "code": 200,
    "message": "success",
    "data": [],
    "pagination": {
        "current_page": 1,
        "per_page": 100,
        "total": 0,
        "last_page": 0,
        "next_page_url": null,
        "prev_page_url": null,
        "path": "https://seyanty.info/api/dashboard/employees",
        "isEmpty": true,
        "isNotEmpty": false,
        "hasMorePages": false,
        "hasPages": false
    }
}
```

**Validation Checks:**
- Response status is "success" (not error)
- Data array is empty `[]`
- `total` = 0
- `last_page` = 0
- `isEmpty` = true
- `isNotEmpty` = false
- `hasMorePages` = false
- `hasPages` = false
- No 404 for empty result

# Notes
- Empty result is a valid success case, not an error
- Pagination metadata must accurately reflect empty state
- `isEmpty`/`isNotEmpty` flags help frontend rendering
- Important for new installations or filtered views with no matches

# Attachments
- cURL for empty result scenario
- Expected empty response structure

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
get_employees "$AUTH_TOKEN" "pagination=on&limit=100&page=1&status=active" | jq

```
---

*Last Updated: 2026-08-23*