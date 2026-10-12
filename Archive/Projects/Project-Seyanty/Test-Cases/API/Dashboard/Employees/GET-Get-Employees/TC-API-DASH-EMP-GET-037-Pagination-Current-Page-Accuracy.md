---
tc_id: TC-API-DASH-EMP-GET-037
title: Pagination Current Page Accuracy
priority: High
status:
  - completed
type: Functional
linked_requirement: REQ-DASH-EMP-037
tags:
  - test-case
  - api
  - dashboard
  - employees
  - pagination
  - validation
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
- Database contains 9 employees
- Pagination with limit=5 (2 pages total)

# Steps
1. Prepare valid Bearer token
2. Request page 2 with limit=5
3. Execute request
4. Verify `current_page` in pagination matches requested page
5. Test multiple page values

# Expected Result
**HTTP Status Code:** 200 OK

**Validation Checks:**
- `pagination.current_page` = 2 (matches requested page)
- `pagination.current_page` = 1 when page=1 requested
- `pagination.current_page` = 1 when page parameter omitted
- `pagination.current_page` reflects actual page even if out of bounds (e.g., page=5 returns current_page=5)
- Value is integer >= 1

**Test Cases:**
| Requested Page | Expected current_page |
| -------------- | -------------------- |
| 1 | 1 |
| 2 | 2 |
| omitted | 1 (default) |
| 5 (beyond last) | 5 |

# Notes
- Verifies current_page accurately reflects request
- Important for frontend page indicator
- Should match requested value even for invalid pages
- Default page=1 when omitted

# Attachments
- cURL for various page values
- Expected pagination.current_page values

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