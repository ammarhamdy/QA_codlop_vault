---
tc_id: TC-API-DASH-EMP-GET-039
title: Pagination Next Page Accuracy
priority: High
status:
  - completed
type: Functional
linked_requirement: REQ-DASH-EMP-039
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
| Query Parameters | pagination=on, limit=5, page=1, status= |
| Content-Type | application/json |

# Preconditions
- Valid authentication token
- Database contains 9 employees
- Pagination with limit=5 (page 1 has next, page 2 doesn't)

# Steps
1. Prepare valid Bearer token
2. Request page 1 with limit=5
3. Verify `next_page_url` is correct
4. Request page 2 with limit=5
5. Verify `next_page_url` is null
6. Test with filters

# Expected Result
**HTTP Status Code:** 200 OK

**Page 1 (limit=5):**
```json
"next_page_url": "https://seyanty.info/api/dashboard/employees?pagination=on&limit=5&page=2"
```

**Page 2 (limit=5):**
```json
"next_page_url": null
```

**Validation Checks:**
- Page 1: `next_page_url` is valid URL with page=2
- Page 1: URL includes all original query params (pagination, limit, status)
- Page 2 (last): `next_page_url` = null
- Single page (limit=100): `next_page_url` = null
- Empty result: `next_page_url` = null
- URL format consistent and parseable

**Filter Preservation:**
- If `status=active` in request, `next_page_url` includes `status=active`
- All query parameters preserved in pagination URLs

# Notes
- Critical for "Load More" / infinite scroll UI
- URL must preserve all filter/sort parameters
- Null on last page prevents infinite loop
- Should be absolute URL for client convenience

# Attachments
- cURL for page 1 and page 2
- Expected next_page_url values

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
get_employees "$AUTH_TOKEN" "pagination=on&limit=1&page=1" | jq .


```
---

*Last Updated: 2026-08-23*