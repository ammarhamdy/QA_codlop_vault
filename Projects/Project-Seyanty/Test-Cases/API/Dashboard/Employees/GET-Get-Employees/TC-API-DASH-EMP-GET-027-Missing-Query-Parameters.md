---
tc_id: TC-API-DASH-EMP-GET-027
title: Missing Query Parameters
priority: Medium
status:
  - completed
type: Functional
linked_requirement: REQ-DASH-EMP-027
tags:
  - test-case
  - api
  - dashboard
  - employees
  - query-parameters
  - positive
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | GET https://seyanty.info/api/dashboard/employees |
| Authentication | Bearer <valid_token> |
| Query Parameters | None (minimal request) |
| Content-Type | application/json |

# Preconditions
- Valid authentication token
- API has sensible defaults for optional query parameters
- Pagination, limit, page, status all optional

# Steps
1. Prepare valid Bearer token
2. Construct GET request to `/api/dashboard/employees` with **no query parameters**
3. Include only Authorization header
4. Execute request
5. Capture response and verify defaults applied
6. Validate response structure with default values

# Expected Result
**HTTP Status Code:** 200 OK

**Response Body:**
```json
{
    "status": "success",
    "code": 200,
    "message": "success",
    "data": [...],
    "pagination": {
        "current_page": 1,
        "per_page": 100,
        "total": 9,
        "last_page": 1,
        ...
    }
}
```

**Validation Checks:**
- Request succeeds without any query parameters
- Default pagination applied (page=1, limit=100 or configured defaults)
- Default status filter (empty/all) applied
- Response structure complete with pagination
- All 9 employees returned (with defaults)

# Notes
- Tests optional query parameter handling
- API should have documented defaults for all parameters
- Minimal request should work for basic usage
- Verifies backward compatibility if parameters added later

# Attachments
- cURL without query parameters
- Expected response with defaults

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
  #local query_string="${2:-}"

  curl --silent --show-error --location --request GET "${BASE_URL}/employees" \
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
get_employees "$AUTH_TOKEN" | jq .


```
---

*Last Updated: 2026-08-23*