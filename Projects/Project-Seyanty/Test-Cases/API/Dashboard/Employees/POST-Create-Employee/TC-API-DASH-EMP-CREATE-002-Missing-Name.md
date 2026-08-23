---
tc_id: TC-API-DASH-EMP-CREATE-002
title: Missing Name
priority: High
status:
type: Functional
linked_requirement: REQ-DASH-EMP-002
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
| name | (omitted) |
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
1. Prepare multipart/form-data request with all required fields EXCEPT name
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
    "message": "اسم الموظف مطلوب",
    "data": {
        "name": ["حقل الاسم مطلوب."]
    }
}
```
- **Database Assertions:** No employee record created

# Notes
- Name is a required field per API validation rules
- Error message is in Arabic as per API localization
- Exact validation message may vary based on backend implementation

# Attachments/Script
```bash
curl --location --request POST 'https://seyanty.info/api/dashboard/employees' \
--header 'Authorization: Bearer <valid-token>' \
--header 'Accept: */*' \
--header 'Content-Type: multipart/form-data' \
--form 'email="employee-10@mail.com"' \
--form 'password="Admin#123"' \
--form 'phone="0500000110"' \
--form 'photo=@"/home/am/Pictures/profile/male/79ad7b7a-99da-4e20-962d-1e9fc405312b.jpeg"' \
--form 'job_title="eng"' \
--form 'overview="Test overview"'
```

---
*Last Updated: 2026-08-23 10:00:00*