---
tc_id: TC-API-DASH-EMP-GET-035
title: Null Overview Handling
priority: Medium
status:
  - completed
type: Functional
linked_requirement: REQ-DASH-EMP-035
tags:
  - test-case
  - api
  - dashboard
  - employees
  - validation
  - null-handling
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
- Database contains employees with both null and non-null overview values
- Sample data: 6 employees with null overview, 3 with non-null

# Steps
1. Prepare valid Bearer token
2. Construct standard GET request
3. Execute request
4. Check `overview` field for each employee
5. Verify null handling (not omitted, not empty string)
6. Verify non-null values preserved correctly

# Expected Result
**HTTP Status Code:** 200 OK

**Employees with Null Overview (6):**
- ID 62: `overview: null`
- ID 60: `overview: null`
- ID 59: `overview: null`
- ID 58: `overview: null`
- ID 57: `overview: null`
- ID 45: `overview: null`

**Employees with Non-Null Overview (3):**
- ID 61: `overview: "نبذة عن موظف اخصائي الكترونيات محترف ومتميز في انجاز المهمات"`
- ID 42: `overview: "<p>صيانة غسالات حديثة وقديمة بأعلى حودة وأقصر وقت ,احسن الأسعار</p>"`
- ID 22: `overview: "مهندس عالي في العمل الكل يشهد له بالكفء 🧑‍🔧"`

**Validation Checks:**
- `overview` field present in ALL employee objects (not omitted)
- Null values returned as JSON `null` (not `"null"`, not `""`, not omitted)
- Non-null values returned as strings with exact content
- Arabic text preserved correctly
- HTML tags preserved (ID 42)
- Emojis preserved (ID 22)
- No transformation or sanitization unless documented

# Notes
- Tests nullable field handling in JSON response
- Null should be explicit JSON null, not empty string
- Field must be present even when null (consistent schema)
- Frontend relies on field presence for conditional rendering

# Attachments
- Sample employees with null and non-null overview
- Expected JSON null representation

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