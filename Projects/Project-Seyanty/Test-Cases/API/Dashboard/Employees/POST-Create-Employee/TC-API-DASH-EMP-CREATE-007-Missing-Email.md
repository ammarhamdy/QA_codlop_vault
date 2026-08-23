---
tc_id: TC-API-DASH-EMP-CREATE-007
title: Missing Email
priority: High
status:
type: Functional
linked_requirement: REQ-DASH-EMP-005
tags:
  - test-case
  - api
  - dashboard
  - employees
  - create
  - negative
  - validation
---

# Test Data
| Field | Value |
| ----- | ----- |
| name | employee-10 |
| email | (omitted) |
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
1. Prepare multipart/form-data request with all required fields EXCEPT email
2. Set Authorization header with valid Bearer token
3. Send POST request to https://seyanty.info/api/dashboard/employees
4. Capture response status code, headers, and body

# Expected Result
- **HTTP Status Code:** 422 Unprocessable Entity (or 400 Bad Request)
- **Response Headers:** Content-Type: application/json
- **Response Body:**
```json
{
    "status": "error",
    "code": 422,
    "message": "البريد الإلكتروني مطلوب",
    "data": {
        "email": ["حقل البريد الإلكتروني مطلوب."]
    }
}
```
- **Database Assertions:** No employee record created

# Notes
- Email is a required field per API validation rules
- Error message is in Arabic as per API localization

# Attachments/Script
```bash
curl --location --request POST 'https://seyanty.info/api/dashboard/employees' \
--header 'Authorization: Bearer <valid-token>' \
--header 'Accept: */*' \
--header 'Content-Type: multipart/form-data' \
--form 'name="employee-10"' \
--form 'password="Admin#123"' \
--form 'phone="0500000110"' \
--form 'photo=@"/home/am/Pictures/profile/male/79ad7b7a-99da-4e20-962d-1e9fc405312b.jpeg"' \
--form 'job_title="eng"' \
--form 'overview="Test overview"'
```

---
*Last Updated: 2026-08-23 10:00:00*