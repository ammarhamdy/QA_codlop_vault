---
tc_id: TC-API-DASH-EMP-GET-030
title: Response Body Structure
priority: High
status:
  - completed
type: Functional
linked_requirement: REQ-DASH-EMP-030
tags:
  - test-case
  - api
  - dashboard
  - employees
  - validation
  - response
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
- API returns consistent response structure

# Steps
1. Prepare valid Bearer token
2. Construct standard GET request
3. Execute request
4. Capture full response body
5. Validate JSON structure against expected schema
6. Verify all top-level fields present

# Expected Result
**HTTP Status Code:** 200 OK

**Response Body Schema:**
```json
{
    "status": "string",
    "code": "integer",
    "message": "string",
    "data": "array",
    "pagination": "object"
}
```

**Required Top-Level Fields:**
- `status` (string): Must be "success"
- `code` (integer): Must be 200
- `message` (string): Must be "success"
- `data` (array): Array of employee objects
- `pagination` (object): Pagination metadata object

**Validation Checks:**
- All 5 top-level fields present
- `status` is string "success"
- `code` is integer 200
- `message` is string "success"
- `data` is array (not null, not object)
- `pagination` is object (not null, not array)
- No extra unexpected top-level fields
- JSON is valid and parseable

# Notes
- Contract test for response structure
- Ensures API contract stability
- Foundation for data accuracy tests
- Should validate against OpenAPI/Swagger schema if available

# Attachments
- JSON schema definition
- Sample valid response

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