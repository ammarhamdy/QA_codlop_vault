---
tc_id: TC-API-DASH-EMP-GET-034
title: Orders Count Accuracy
priority: High
status:
  - completed
type: Functional
linked_requirement: REQ-DASH-EMP-034
tags:
  - test-case
  - api
  - dashboard
  - employees
  - validation
  - data-accuracy
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
- Database contains employees with known orders_count values
- Orders count derived from related orders table

# Steps
1. Prepare valid Bearer token
2. Construct standard GET request
3. Execute request
4. For each employee, verify `orders_count` field
5. Cross-reference with actual order counts in database
6. Validate data type and range

# Expected Result
**HTTP Status Code:** 200 OK

**Expected Orders Counts (per sample data):**

| Employee ID | Name | orders_count |
| ----------- | ---- | ------------ |
| 62 | محمد حسام | 0 |
| 61 | admin | 1 |
| 60 | محمد حسام | 1 |
| 59 | ahmed | 0 |
| 58 | محمد | 1 |
| 57 | الموظف : عمار | 0 |
| 45 | محمد حسام الدين علي | 0 |
| 42 | عبدالرحمن محمد | 0 |
| 22 | ابراهيم | 0 |

**Validation Checks:**
- `orders_count` present for every employee
- Value is integer >= 0
- Matches actual order count in database
- Employees with orders: IDs 61, 60, 58 (count=1 each)
- Employees without orders: 6 employees (count=0)
- No negative values
- No null values

# Notes
- Verifies computed/aggregated field accuracy
- Orders count likely from JOIN or subquery
- Important for dashboard metrics display
- Should match order service data

# Attachments
- Orders count reference data
- Sample response with counts

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