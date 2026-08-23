---
tc_id: TC-API-DASH-EMP-CREATE-010
title: Duplicate Email
priority: High
status:
type: Functional
linked_requirement: REQ-DASH-EMP-007
tags:
  - test-case
  - api
  - dashboard
  - employees
  - create
  - negative
  - validation
  - duplicate
---

# Test Data
| Field | Value |
| ----- | ----- |
| name | employee-11 |
| email | employee-10@mail.com |
| password | Admin#123 |
| phone | 0500000111 |
| job_title | eng |
| overview | Test overview |
| photo | /home/am/Pictures/profile/male/79ad7b7a-99da-4e20-962d-1e9fc405312b.jpeg |

# Preconditions
- Valid authentication token (Bearer token) available for admin user
- Database has existing employee with email: employee-10@mail.com (created by TC-001)
- API server is running and accessible at https://seyanty.info

# Steps
1. Prepare multipart/form-data request with email that already exists in database
2. Set Authorization header with valid Bearer token
3. Send POST request to https://seyanty.info/api/dashboard/employees
4. Capture response status code, headers, and body

# Expected Result
- **HTTP Status Code:** 422 Unprocessable Entity (or 409 Conflict)
- **Response Headers:** Content-Type: application/json
- **Response Body:**
```json
{
    "status": "error",
    "code": 422,
    "message": "البريد الإلكتروني مستخدم بالفعل",
    "data": {
        "email": ["هذا البريد الإلكتروني مسجل مسبقاً."]
    }
}
```
- **Database Assertions:** No new employee record created; existing record unchanged

# Notes
- Email uniqueness is enforced at database level
- Error message is in Arabic as per API localization
- Precondition: TC-001 must pass to create the initial employee

# Attachments/Script
```bash
curl --location --request POST 'https://seyanty.info/api/dashboard/employees' \
--header 'Authorization: Bearer <valid-token>' \
--header 'Accept: */*' \
--header 'Content-Type: multipart/form-data' \
--form 'name="employee-11"' \
--form 'email="employee-10@mail.com"' \
--form 'password="Admin#123"' \
--form 'phone="0500000111"' \
--form 'photo=@"/home/am/Pictures/profile/male/79ad7b7a-99da-4e20-962d-1e9fc405312b.jpeg"' \
--form 'job_title="eng"' \
--form 'overview="Test overview"'
```

---
*Last Updated: 2026-08-23 10:00:00*