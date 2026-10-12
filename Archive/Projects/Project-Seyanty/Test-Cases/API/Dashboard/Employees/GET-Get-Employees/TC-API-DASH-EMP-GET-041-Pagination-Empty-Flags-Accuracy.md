---
tc_id: TC-API-DASH-EMP-GET-041
title: Pagination Empty Flags Accuracy
priority: Medium
status:
  - completed
type: Functional
linked_requirement: REQ-DASH-EMP-041
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
| Query Parameters | pagination=on, limit=100, page=1, status= (various) |
| Content-Type | application/json |

# Preconditions
- Valid authentication token
- Database contains 9 employees (non-empty)
- Test scenarios with data and without data

# Steps
1. Prepare valid Bearer token
2. Test non-empty result (default request)
3. Test empty result (filter with no matches)
4. Verify `isEmpty` and `isNotEmpty` flags
5. Verify `hasMorePages` and `hasPages` flags

# Expected Result
**HTTP Status Code:** 200 OK

**Non-Empty Result (9 employees):**
```json
"isEmpty": false,
"isNotEmpty": true,
"hasMorePages": false,
"hasPages": false
```

**Empty Result (0 employees):**
```json
"isEmpty": true,
"isNotEmpty": false,
"hasMorePages": false,
"hasPages": false
```

**Multi-Page Result (limit=5, 9 employees):**
```json
// Page 1
"isEmpty": false,
"isNotEmpty": true,
"hasMorePages": true,
"hasPages": true

// Page 2
"isEmpty": false,
"isNotEmpty": true,
"hasMorePages": false,
"hasPages": true
```

**Validation Checks:**
- `isEmpty` === !`isNotEmpty` (always opposite)
- `isEmpty` = true only when data array empty
- `hasMorePages` = true when `current_page` < `last_page`
- `hasPages` = true when `last_page` > 1
- Flags consistent with data and pagination state
- All flags are booleans (not strings)

# Notes
- Boolean flags simplify frontend conditional rendering
- `hasPages` distinguishes single-page from multi-page
- `hasMorePages` drives "Load More" button visibility
- `isEmpty`/`isNotEmpty` drive empty state UI

# Attachments
- Flag truth table for all scenarios
- Expected flag values

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
get_employees "$AUTH_TOKEN" "pagination=on&limit=100&page=1" | jq .



```
---

*Last Updated: 2026-08-23*