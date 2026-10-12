---
tc_id: TC-API-DASH-EMP-GET-025
title: Filter Inactive Employees
priority: High
status:
  - completed
type: Functional
linked_requirement: REQ-DASH-EMP-025
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
| Query Parameters | pagination=on, limit=100, page=1, status=inactive |
| Content-Type | application/json |

# Preconditions
- Valid authentication token
- Database contains employees with status="inactive"
- Sample data shows 7 inactive employees (IDs 61, 60, 58, 57, 45, 42, 22)
- Status filter supports "inactive" value

# Steps
1. Prepare valid Bearer token
2. Construct GET request with `status=inactive`
3. Include `pagination=on&limit=100&page=1`
4. Execute request with Authorization header
5. Capture response and verify only inactive employees returned
6. Validate all returned employees have status="inactive"

# Expected Result
**HTTP Status Code:** 200 OK

**Response Body - Data:**
- Data array contains 7 employee objects (IDs 61, 60, 58, 57, 45, 42, 22)
- All have `"status": "inactive"`

**Sample Inactive Employees:**
```json
{
    "id": 61,
    "name": "admin",
    "email": "test11@gmail.com",
    "status": "inactive",
    "is_blocked": "active",
    "orders_count": 1
},
{
    "id": 60,
    "name": "محمد حسام",
    "email": "nbc@yahoo.com",
    "status": "inactive",
    "is_blocked": "active",
    "orders_count": 1
}
```

**Response Body - Pagination:**
```json
"pagination": {
    "total": 7,
    "last_page": 1,
    "isEmpty": false,
    "isNotEmpty": true
}
```

**Validation Checks:**
- Only 7 employees returned
- All have `status: "inactive"`
- `total` = 7 in pagination
- No active employees in response
- Pagination reflects filtered count

# Notes
- Tests status filter with "inactive" value
- Verifies filter correctly excludes active employees
- 7 inactive employees in sample data
- Pagination total should match filtered results (7), not total database count (9)

# Attachments
- cURL with status=inactive
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
get_employees "$AUTH_TOKEN" "pagination=on&limit=100&page=1&status=inactive" | jq .


```
---

*Last Updated: 2026-08-23*