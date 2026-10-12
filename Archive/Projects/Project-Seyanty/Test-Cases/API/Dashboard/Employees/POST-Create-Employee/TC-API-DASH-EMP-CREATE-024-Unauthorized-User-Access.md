---
tc_id: TC-API-DASH-EMP-CREATE-024
title: Unauthorized User Access
priority: High
status:
  - completed
type: Functional
linked_requirement: REQ-DASH-EMP-018
tags:
  - test-case
  - api
  - dashboard
  - employees
  - create
  - negative
  - security
  - authorization
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
- Database is in clean state
- API server is running and accessible at https://seyanty.info
- Valid Bearer token for non-admin user (regular employee/user without create permissions)

# Steps
1. Prepare multipart/form-data request with all valid employee fields
2. Set Authorization header with valid Bearer token for unauthorized user role
3. Send POST request to https://seyanty.info/api/dashboard/employees
4. Capture response status code, headers, and body

# Expected Result
- **HTTP Status Code:** 403 Forbidden (or 401 Unauthorized)
- **Response Headers:** Content-Type: application/json
- **Response Body:**
```json
{
    "status": "error",
    "code": 403,
    "message": "غير مصرح لك بالوصول إلى هذا المورد",
    "data": null
}
```
OR
```json
{
    "status": "error",
    "code": 404,
    "message": "Not Found",
    "data": null
}
```
- **Database Assertions:** No employee record created

# Notes
- Role-based access control should prevent non-admin users from creating employees
- Error message is in Arabic as per API localization
- 404 may be returned to hide endpoint existence from unauthorized users

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
  response=$(curl --silent --show-error --location --request POST "${BASE_URL}/employee/login" \
    --header "Accept: application/json" \
    --header "Content-Type: application/json" \
    --data "$payload")

  echo "$response" | jq -r '.data.token // .token // .access_token // empty'
}

echo "Logging in..."
AUTH_TOKEN=$(login "employee-09@mail.com" "Admin#123")

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