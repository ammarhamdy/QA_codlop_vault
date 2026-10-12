---
tc_id: TC-API-DASH-EMP-GET-036
title: Pagination Object Structure
priority: High
status:
  - completed
type: Functional
linked_requirement: REQ-DASH-EMP-036
tags:
  - test-case
  - api
  - dashboard
  - employees
  - pagination
  - validation
  - schema
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
- Database contains employee records
- Pagination enabled

# Steps
1. Prepare valid Bearer token
2. Construct GET request with pagination=on
3. Execute request
4. Validate pagination object structure
5. Verify all required fields present
6. Check field types

# Expected Result
**HTTP Status Code:** 200 OK

**Pagination Object Schema:**
```json
"pagination": {
    "current_page": "integer",
    "first_page_url": "integer|string",
    "last_page": "integer",
    "last_page_url": "integer|string",
    "next_page_url": "string|null",
    "path": "string",
    "per_page": "integer",
    "prev_page_url": "string|null",
    "total": "integer",
    "isEmpty": "boolean",
    "isNotEmpty": "boolean",
    "hasMorePages": "boolean",
    "hasPages": "boolean"
}
```

**Required Fields (13 total):**

| Field | Type | Description |
| ----- | ---- | ----------- |
| `current_page` | integer | Current page number |
| `first_page_url` | integer/string | First page URL or number |
| `last_page` | integer | Total number of pages |
| `last_page_url` | integer/string | Last page URL or number |
| `next_page_url` | string/null | Next page URL or null |
| `path` | string | Base endpoint path |
| `per_page` | integer | Items per page (limit) |
| `prev_page_url` | string/null | Previous page URL or null |
| `total` | integer | Total record count |
| `isEmpty` | boolean | True if no data |
| `isNotEmpty` | boolean | True if data exists |
| `hasMorePages` | boolean | True if next page exists |
| `hasPages` | boolean | True if multiple pages |

**Validation Checks:**
- All 13 fields present
- `current_page`, `last_page`, `per_page`, `total` are integers
- `next_page_url`, `prev_page_url` are string or null
- `path` is string (full endpoint URL)
- `isEmpty`, `isNotEmpty`, `hasMorePages`, `hasPages` are booleans
- `isEmpty` === !`isNotEmpty`
- `hasMorePages` === (`current_page` < `last_page`)
- `hasPages` === (`last_page` > 1)

# Notes
- Comprehensive pagination contract test
- Boolean flags help frontend pagination UI
- `first_page_url`/`last_page_url` are integers in sample (1) not full URLs
- `next_page_url`/`prev_page_url` are full URLs or null
- Structure must be consistent across all paginated endpoints

# Attachments
- Pagination schema definition
- Sample pagination object

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