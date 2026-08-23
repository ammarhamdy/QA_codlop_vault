---
tc_id: TC-API-DASH-EMP-GET-032
title: Required Employee Fields
priority: High
status:
  - completed
type: Functional
linked_requirement: REQ-DASH-EMP-032
tags:
  - test-case
  - api
  - dashboard
  - employees
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
- Employee model has defined required fields

# Steps
1. Prepare valid Bearer token
2. Construct standard GET request
3. Execute request
4. For each employee in data array, verify all required fields present
5. Check field types and nullability
6. Report any missing or extra fields

# Expected Result
**HTTP Status Code:** 200 OK

**Required Fields (must be present in every employee object):**

| Field | Type | Nullable | Description |
| ----- | ---- | -------- | ----------- |
| `id` | integer | No | Unique identifier |
| `name` | string | No | Employee full name |
| `email` | string | No | Email address |
| `phone` | string | No | Phone number |
| `photo` | string | No | Profile photo URL |
| `job_title` | string | Yes | Job title (can be null) |
| `overview` | string | Yes | Bio/overview (can be null) |
| `status` | string | No | "active" or "inactive" |
| `is_blocked` | string | No | "active" or "inactive" |
| `orders_count` | integer | No | Number of orders |

**Validation Checks:**
- All 10 fields present in every employee object
- `id`, `name`, `email`, `phone`, `photo`, `status`, `is_blocked`, `orders_count` never null
- `job_title`, `overview` can be null (as seen in sample data)
- `id` is positive integer
- `orders_count` is non-negative integer
- `status` value in ["active", "inactive"]
- `is_blocked` value in ["active", "inactive"]
- No extra unexpected fields

# Notes
- Schema compliance test for employee object
- Distinguishes required vs optional fields
- `job_title` and `overview` are nullable per sample data
- `status` and `is_blocked` are separate fields with same value domain

# Attachments
- Employee schema definition
- Sample employee objects showing null fields

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