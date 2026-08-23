---
tc_id: TC-API-DASH-EMP-GET-002
title: Valid Authenticated Request
priority: High
status:
  - completed
type: Functional
linked_requirement: REQ-DASH-EMP-002
tags:
  - test-case
  - api
  - dashboard
  - employees
  - authentication
  - positive
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
- User has successfully logged in and obtained a valid JWT token
- Token has not expired (typically valid for 24 hours or configured TTL)
- User account has dashboard/employee read permissions
- API server is accessible and authentication middleware is active

# Steps
1. Obtain valid Bearer token via login endpoint (`POST /api/login`)
2. Verify token is not expired by checking `exp` claim
3. Construct GET request to `/api/dashboard/employees` with standard query parameters
4. Include `Authorization: Bearer <valid_token>` header
5. Execute the request
6. Verify successful response with employee data

# Expected Result
**HTTP Status Code:** 200 OK

**Response Headers:**
- Content-Type: application/json
- Authorization middleware processed token successfully

**Response Body:**
```json
{
    "status": "success",
    "code": 200,
    "message": "success",
    "data": [...],
    "pagination": {...}
}
```

**Validation Checks:**
- Response status is "success"
- Response code is 200
- Employee data array is returned
- No authentication errors in response
- Token validation passed silently (no auth-related headers in error response)

# Notes
- This test verifies that a properly authenticated request succeeds
- Token must be obtained fresh before test execution to avoid expiry
- Tests the happy path for authentication middleware
- Complements TC-001 by focusing specifically on auth validation

# Attachments
- Login cURL for token generation
- Sample successful response

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