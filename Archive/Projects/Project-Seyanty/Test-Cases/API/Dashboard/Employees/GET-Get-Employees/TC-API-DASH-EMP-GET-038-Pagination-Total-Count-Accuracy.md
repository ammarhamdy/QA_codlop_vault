---
tc_id: TC-API-DASH-EMP-GET-038
title: Pagination Total Count Accuracy
priority: High
status:
  - completed
type: Functional
linked_requirement: REQ-DASH-EMP-038
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
| Query Parameters | pagination=on, limit=100, page=1, status= |
| Content-Type | application/json |

# Preconditions
- Valid authentication token
- Database contains exactly 9 employee records
- No filters applied (status=empty)

# Steps
1. Prepare valid Bearer token
2. Construct GET request without status filter
3. Execute request
4. Verify `pagination.total` matches actual database count
5. Test with status filters to verify filtered totals

# Expected Result
**HTTP Status Code:** 200 OK

**Validation Checks (No Filter):**
- `pagination.total` = 9 (matches sample data)
- `pagination.total` equals actual database row count
- Consistent across multiple requests
- Integer value >= 0

**Validation Checks (With Filters):**
- `status=active`: `total` = 2
- `status=inactive`: `total` = 7
- `status=invalid`: `total` = 0 (or 9 if filter ignored)
- Total reflects filtered results, not full table count

**Cross-Reference:**
- `total` = sum of all pages' data lengths
- `total` = `per_page` * (`last_page` - 1) + last_page_data_count
- For page=1, limit=5: total = 5 + 4 = 9 ✓

# Notes
- Critical for pagination UI (total items, total pages)
- Must reflect filtered count when filters applied
- Should match database COUNT(*) query
- Consistency: total should not change between pages

# Attachments
- Database count reference
- Expected totals for each filter

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