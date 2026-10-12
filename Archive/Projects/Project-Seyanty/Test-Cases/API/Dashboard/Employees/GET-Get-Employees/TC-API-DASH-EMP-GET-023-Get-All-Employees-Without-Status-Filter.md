---
tc_id: TC-API-DASH-EMP-GET-023
title: Get All Employees Without Status Filter
priority: High
status:
  - completed
type: Functional
linked_requirement: REQ-DASH-EMP-023
tags:
  - test-case
  - api
  - dashboard
  - employees
  - filter
  - status
  - positive
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | GET https://seyanty.info/api/dashboard/employees |
| Authentication | Bearer <valid_token> |
| Query Parameters | pagination=on, limit=100, page=1, status= (empty) |
| Content-Type | application/json |

# Preconditions
- Valid authentication token
- Database contains 9 employees with mixed statuses (active/inactive)
- Status filter parameter is optional
- Empty status returns all records

# Steps
1. Prepare valid Bearer token
2. Construct GET request with empty `status=` parameter
3. Include `pagination=on&limit=100&page=1`
4. Execute request with Authorization header
5. Capture response and verify all statuses returned
6. Count active vs inactive in response

# Expected Result
**HTTP Status Code:** 200 OK

**Response Body - Data:**
- Data array contains all 9 employees (both active and inactive)
- Sample data shows: 2 active (IDs 62, 59), 7 inactive (IDs 61, 60, 58, 57, 45, 42, 22)

**Validation Checks:**
- All 9 employees returned regardless of status
- Both "active" and "inactive" status values present in response
- No filtering applied when status is empty
- Total count = 9 in pagination

# Notes
- Default behavior when no status filter specified
- Empty string status= should return all records
- Verifies filter is truly optional
- Complements TC-024 and TC-025 which test specific filters

# Attachments
- cURL with empty status
- Expected full employee list
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