---
tc_id: TC-API-DASH-EMP-CREATE-018
title: Valid Profile Photo
priority: Medium
status:
  - completed
type: Functional
linked_requirement: REQ-DASH-EMP-012
tags:
  - test-case
  - api
  - dashboard
  - employees
  - create
  - positive
  - file-upload
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
- Test image file exists at specified path (valid JPEG, under size limit)

# Steps
1. Prepare multipart/form-data request with valid profile photo (JPEG format)
2. Set Authorization header with valid Bearer token
3. Send POST request to https://seyanty.info/api/dashboard/employees
4. Capture response status code, headers, and body
5. Verify photo URL in response is accessible
6. Verify file stored in storage/employees directory

# Expected Result
- **HTTP Status Code:** 200 OK
- **Response Headers:** Content-Type: application/json
- **Response Body:**
```json
{
    "status": "success",
    "code": 200,
    "message": "تم انشاء الموظف بنجاح",
    "data": {
        "id": 63,
        "name": "employee-10",
        "email": "employee-10@mail.com",
        "phone": "0500000110",
        "photo": "https://seyanty.info/storage/employees/wNUp49y2Qmd3TCwwVSwROPEto3zgbdnQGrZRAdZe.jpg",
        "job_title": "eng",
        "overview": "Test overview",
        "status": "active",
        "is_blocked": "active",
        "orders_count": null
    }
}
```
- **File Storage Assertions:**
  - Photo URL is valid and accessible via HTTP GET
  - File stored in storage/employees/ with unique filename
  - File type preserved (JPEG)
  - File size within limits

# Notes
- Photo is optional but when provided must be valid image
- Supported formats: JPEG, PNG, GIF, WebP
- Maximum file size typically 2MB-5MB
- Response message is in Arabic as per API localization

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