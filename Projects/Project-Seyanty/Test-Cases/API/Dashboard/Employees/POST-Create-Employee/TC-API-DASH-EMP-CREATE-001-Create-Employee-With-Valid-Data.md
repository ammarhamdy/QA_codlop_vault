---
tc_id: TC-API-DASH-EMP-CREATE-001
title: Create Employee With Valid Data
priority: High
status:
type: Functional
linked_requirement: REQ-DASH-EMP-001
tags:
  - test-case
  - api
  - dashboard
  - employees
  - create
  - positive
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
curl --location --request POST 'https://seyanty.info/api/dashboard/employees' \
--header 'Authorization: Bearer <valid-token>' \
--header 'Accept: */*' \
--header 'Content-Type: multipart/form-data' \
--form 'name="employee-10"' \
--form 'email="employee-10@mail.com"' \
--form 'password="Admin#123"' \
--form 'phone="0500000110"' \
--form 'photo=@"/home/am/Pictures/profile/male/79ad7b7a-99da-4e20-962d-1e9fc405312b.jpeg"' \
--form 'job_title="eng"' \
--form 'overview="Senior Software Engineer with 5+ years experience"'
```

---
*Last Updated: 2026-08-23 10:00:00*