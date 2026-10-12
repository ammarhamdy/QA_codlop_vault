---
tc_id: TC-API-DASH-EMP-GET-024
title: Filter Active Employees
priority: High
status:
  - completed
type: Functional
linked_requirement: REQ-DASH-EMP-024
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
| Query Parameters | pagination=on, limit=100, page=1, status=active |
| Content-Type | application/json |

# Preconditions
- Valid authentication token
- Database contains employees with status="active"
- Sample data shows 2 active employees (IDs 62, 59)
- Status filter supports "active" value

# Steps
1. Prepare valid Bearer token
2. Construct GET request with `status=active`
3. Include `pagination=on&limit=100&page=1`
4. Execute request with Authorization header
5. Capture response and verify only active employees returned
6. Validate all returned employees have status="active"

# Expected Result
**HTTP Status Code:** 200 OK

**Response Body - Data:**
- Data array contains 2 employee objects (IDs 62, 59)
- Both have `"status": "active"`

**Sample Active Employees:**
```json
{
    "id": 62,
    "name": "محمد حسام",
    "email": "nbccc@yahoo.com",
    "status": "active",
    "is_blocked": "active",
    "orders_count": 0
},
{
    "id": 59,
    "name": "ahmed",
    "email": "ahmed@gmail.com",
    "status": "active",
    "is_blocked": "inactive",
    "orders_count": 0
}
```

**Response Body - Pagination:**
```json
"pagination": {
    "total": 2,
    "last_page": 1,
    "isEmpty": false,
    "isNotEmpty": true
}
```

**Validation Checks:**
- Only 2 employees returned
- All have `status: "active"`
- `total` = 2 in pagination
- No inactive employees in response
- Pagination reflects filtered count

# Notes
- Tests status filter with "active" value
- Verifies filter correctly excludes inactive employees
- `is_blocked` field is separate from `status` (both can be active/inactive independently)
- Pagination total should match filtered results, not total database count

# Attachments
- cURL with status=active
- Expected filtered response

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
get_employees "$AUTH_TOKEN" "pagination=on&limit=100&page=1&status=active" | jq .

```
---

*Last Updated: 2026-08-23*