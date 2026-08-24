---
tc_id: TC-API-DASH-EMP-CREATE-001
title: Create Employee With Valid Data
priority: High
status:
  - completed
type: Functional
linked_requirement: REQ-DASH-EMP-001
tags:
  - test-case
  - api
  - dashboard
  - employees
  - create
  - positive
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
| overview | Senior Software Engineer with 5+ years experience |
| photo | /home/am/Pictures/profile/male/79ad7b7a-99da-4e20-962d-1e9fc405312b.jpeg |

# Preconditions
- Valid authentication token (Bearer token) available for admin user
- Database is in clean state (no existing employee with email employee-10@mail.com)
- API server is running and accessible at https://seyanty.info
- Test image file exists at specified path

# Steps
1. Prepare multipart/form-data request with all valid employee fields including profile photo
2. Set Authorization header with valid Bearer token
3. Send POST request to https://seyanty.info/api/dashboard/employees
4. Capture response status code, headers, and body
5. Verify employee record exists in database with correct data

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
        "overview": "Senior Software Engineer with 5+ years experience",
        "status": "active",
        "is_blocked": "active",
        "orders_count": null
    }
}
```
- **Database Assertions:**
  - Employee record exists with matching name, email, phone, job_title, overview
  - status = 'active'
  - is_blocked = 'active'
  - orders_count = null
  - photo URL is valid and accessible
  - password is hashed (not stored in plain text)

# Notes
- This is the primary happy path test case
- Photo upload should result in a valid storage URL
- Response message is in Arabic as per API localization
- Employee ID is auto-generated

# Attachments/Script
```bash
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

curl --location --request POST "$BASE_URL/employees" \
--header "Authorization: Bearer $AUTH_TOKEN" \
--header 'Accept: */*' \
--header 'Content-Type: multipart/form-data' \
--form 'name="employee-11"' \
--form 'email="employee-11@mail.com"' \
--form 'password="Admin#123"' \
--form 'phone="0500000111"' \
--form 'photo=@"/home/am/Pictures/profile/male/79ad7b7a-99da-4e20-962d-1e9fc405312b.jpeg"' \
--form 'job_title="eng"' \
--form 'overview="Senior Software Engineer with 5+ years experience"' | jq .
```

---
*Last Updated: 2026-08-23 10:00:00*