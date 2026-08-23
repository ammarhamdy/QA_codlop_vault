---
tc_id: TC-API-DASH-EMP-GET-033
title: Employee Status Accuracy
priority: High
status:
  - completed
type: Functional
linked_requirement: REQ-DASH-EMP-033
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
- Database contains employees with known status values
- Sample data: 2 active, 7 inactive employees

# Steps
1. Prepare valid Bearer token
2. Construct standard GET request (no status filter)
3. Execute request
4. Count employees by status value
5. Verify status values are only "active" or "inactive"
6. Cross-reference with database if possible

# Expected Result
**HTTP Status Code:** 200 OK

**Validation Checks:**
- All employees have `status` field
- `status` value is either "active" or "inactive" (exactly)
- No null, empty, or other values for status
- Count matches database: 2 active, 7 inactive (per sample)
- Active employees: IDs 62, 59
- Inactive employees: IDs 61, 60, 58, 57, 45, 42, 22

**Status Field Rules:**
- Must be lowercase string
- Only two valid values: "active", "inactive"
- Not boolean, not numeric
- Consistent across all employees

# Notes
- Validates status field enum compliance
- Ensures data consistency for frontend filters
- Status is separate from `is_blocked` (different field)
- Important for dashboard UI status badges/filters

# Attachments
- Sample data with status breakdown
- Expected status distribution

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