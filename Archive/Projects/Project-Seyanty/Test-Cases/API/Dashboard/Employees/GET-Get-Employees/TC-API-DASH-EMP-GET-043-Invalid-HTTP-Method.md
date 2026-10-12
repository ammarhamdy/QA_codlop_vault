---
tc_id: TC-API-DASH-EMP-GET-043
title: Invalid HTTP Method
priority: High
status:
  - completed
type: Functional
linked_requirement: REQ-DASH-EMP-043
tags:
  - test-case
  - api
  - dashboard
  - employees
  - negative
  - http-method
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | https://seyanty.info/api/dashboard/employees |
| Authentication | Bearer <valid_token> |
| HTTP Methods | POST, PUT, PATCH, DELETE, OPTIONS, HEAD |
| Content-Type | application/json |

# Preconditions
- Valid authentication token
- Endpoint only supports GET method
- Other methods should be rejected

# Steps
1. Prepare valid Bearer token
2. For each invalid HTTP method (POST, PUT, PATCH, DELETE):
   - Construct request to `/api/dashboard/employees` with that method
   - Include Authorization header
   - Execute request
   - Capture response status code and body
3. Verify method not allowed handling

# Expected Result
**HTTP Status Code:** 405 Method Not Allowed

**Response Body:**
```json
{
    "status": "error",
    "code": 405,
    "message": "Method Not Allowed",
    "data": null
}
```
OR framework-specific 405 response

**Validation Checks:**
- POST returns 405
- PUT returns 405
- PATCH returns 405
- DELETE returns 405
- Response indicates method not allowed
- No data mutation occurs
- `Allow` header may list allowed methods (GET)

**OPTIONS/HEAD:**
- OPTIONS may return 200 with Allow header
- HEAD may return 200 with no body (same headers as GET)

# Notes
- Tests HTTP method restriction enforcement
- 405 is standard for unsupported methods
- Prevents accidental data mutation via wrong method
- Framework routing should handle automatically

# Attachments
- cURL for each invalid method
- Expected 405 responses

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

  curl --silent --show-error --location --request PATCH "${BASE_URL}/employees?${query_string}" \
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