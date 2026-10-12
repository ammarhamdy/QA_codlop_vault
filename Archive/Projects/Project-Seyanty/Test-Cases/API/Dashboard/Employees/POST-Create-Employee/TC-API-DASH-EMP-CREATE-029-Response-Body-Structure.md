---
tc_id: TC-API-DASH-EMP-CREATE-029
title: Response Body Structure
priority: High
status:
  - completed
type: Functional
linked_requirement: REQ-DASH-EMP-023
tags:
  - test-case
  - api
  - dashboard
  - employees
  - create
  - positive
  - response-validation
  - schema
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| name | employee-10 |
| email | employee-10@mail.com |
| password | Admin#123 |
| phone | 0500000110 |
| job_title | eng |
| overview | Test overview |
| photo | /home/am/Pictures/profile/male/79ad7b7a-99da-4e20-962d-1e9fc405312b.jpeg |

# Preconditions
- Valid authentication token (Bearer token) available for admin user
- Database is in clean state
- API server is running and accessible at https://seyanty.info

# Steps
1. Prepare multipart/form-data request with all valid employee fields
2. Set Authorization header with valid Bearer token
3. Send POST request to https://seyanty.info/api/dashboard/employees
4. Capture response body
5. Validate response JSON structure against expected schema

# Expected Result
- **HTTP Status Code:** 200 OK
- **Response Headers:** Content-Type: application/json
- **Response Body Schema:**
```json
{
    "status": "string",           // "success"
    "code": "integer",            // 200
    "message": "string",          // "تم انشاء الموظف بنجاح"
    "data": {
        "id": "integer",          // auto-generated
        "name": "string",         // "employee-10"
        "email": "string",        // "employee-10@mail.com"
        "phone": "string",        // "0500000110"
        "photo": "string|null",   // URL or null
        "job_title": "string",    // "eng"
        "overview": "string|null",// "Test overview" or null
        "status": "string",       // "active"
        "is_blocked": "string",   // "active"
        "orders_count": "integer|null" // null
    }
}
```
- **Field Validations:**
  - status must be "success"
  - code must be 200
  - message must be Arabic success message
  - data object must contain all fields listed
  - id must be positive integer
  - photo must be valid URL or null
  - status and is_blocked must be "active"

# Notes
- Validates complete response structure and data types
- Arabic localization for messages
- Nullable fields: photo, overview, orders_count

# Attachments/Script
```bash
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

echo "Logging in..."
AUTH_TOKEN=$(login "admin@admin.com" "Admin#123")

curl --location --request POST "${BASE_URL}/employees" \
--header "Authorization: Bearer $AUTH_TOKEN" \
--header 'Accept: */*' \
--header 'Content-Type: multipart/form-data' \
--form 'name="employee-10"' \
--form 'email="employee-10@mail.com"' \
--form 'password="Admin#123"' \
--form 'phone="0500000110"' \
--form 'photo=@"/home/am/Pictures/profile/male/79ad7b7a-99da-4e20-962d-1e9fc405312b.jpeg"' \
--form 'job_title="eng"' \
--form 'overview="Test overview"' | jq .
```

---
*Last Updated: 2026-08-23 10:00:00*