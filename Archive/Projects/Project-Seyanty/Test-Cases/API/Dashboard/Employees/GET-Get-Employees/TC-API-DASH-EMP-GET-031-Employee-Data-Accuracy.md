---
tc_id: TC-API-DASH-EMP-GET-031
title: Employee Data Accuracy
priority: High
status:
  - completed
type: Functional
linked_requirement: REQ-DASH-EMP-031
tags:
  - test-case
  - api
  - dashboard
  - employees
  - validation
  - data-accuracy
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
- Database contains known employee records (9 employees with specific data)
- Test data matches sample response exactly

# Steps
1. Prepare valid Bearer token
2. Construct standard GET request
3. Execute request
4. Capture response data array
5. Compare each employee field against known database values
6. Verify exact match for all fields

# Expected Result
**HTTP Status Code:** 200 OK

**Validation Checks - Employee ID 62:**
- `id`: 62
- `name`: "محمد حسام"
- `email`: "nbccc@yahoo.com"
- `phone`: "0514787236"
- `photo`: "https://seyanty.info/default.jpg"
- `job_title`: "مهندس 🧑‍🔧"
- `overview`: null
- `status`: "active"
- `is_blocked`: "active"
- `orders_count`: 0

**Validation Checks - Employee ID 61:**
- `id`: 61
- `name`: "admin"
- `email`: "test11@gmail.com"
- `phone`: "0512345678"
- `photo`: "https://seyanty.info/storage/employees/OrD1aOFNPgCcaeUyl7QmEZxZs2Yfho9hAlBXBIE6.jpg"
- `job_title`: "اخصائي الكترونيات"
- `overview`: "نبذة عن موظف اخصائي الكترونيات محترف ومتميز في انجاز المهمات"
- `status`: "inactive"
- `is_blocked`: "active"
- `orders_count`: 1

**... (verify all 9 employees against sample data)**

**Data Integrity Checks:**
- All IDs unique
- Emails unique
- Phone numbers valid format
- Photo URLs accessible
- Arabic text encoded correctly (UTF-8)
- Emojis preserved in job_title/overview
- HTML in overview preserved (ID 42)

# Notes
- Comprehensive data accuracy test
- Verifies API returns exact database values
- Checks UTF-8 encoding for Arabic content
- Validates special characters (emojis, HTML)
- Should be run against known test dataset

# Attachments
- Complete expected response (9 employees)
- Database reference data

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