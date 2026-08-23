---
tc_id: TC-API-DASH-EMP-GET-042
title: Sensitive Data Not Exposed
priority: Critical
status:
  - completed
type: Security
linked_requirement: REQ-DASH-EMP-042
tags:
  - test-case
  - api
  - dashboard
  - employees
  - security
  - data-protection
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
- Database contains employee records with sensitive fields
- Employee model has sensitive fields not in API response

# Steps
1. Prepare valid Bearer token
2. Construct standard GET request
3. Execute request
4. Inspect response for sensitive fields
5. Verify only expected fields returned
6. Check error responses don't leak data

# Expected Result
**HTTP Status Code:** 200 OK

**Fields MUST NOT Appear in Response:**
- `password` / `password_hash` / `encrypted_password`
- `remember_token` / `api_token` / `access_token`
- `email_verified_at` / `verification_token`
- `two_factor_secret` / `two_factor_recovery_codes`
- `social_security_number` / `national_id`
- `bank_account` / `credit_card`
- `salary` / `compensation` / `pay_rate`
- `created_at` / `updated_at` / `deleted_at` (if not needed)
- `pivot` / `relations` / `nested` objects
- Any field not in defined schema (TC-032)

**Allowed Fields (from TC-032):**
- `id`, `name`, `email`, `phone`, `photo`, `job_title`, `overview`, `status`, `is_blocked`, `orders_count`

**Validation Checks:**
- Response contains exactly 10 fields per employee (no more, no less)
- No password hashes or tokens
- No internal timestamps unless documented
- No soft delete markers
- No relationship/nested data
- Error responses (401, 403, 404) also don't leak data

# Notes
- Critical security test - prevents data leakage
- API should use explicit field selection (whitelist)
- Laravel: `$visible` or API Resources; other frameworks: DTOs/serializers
- Email/phone are PII but required for dashboard function
- Audit: run after any model/schema changes

# Attachments
- Employee model field list
- Expected vs actual response field comparison

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