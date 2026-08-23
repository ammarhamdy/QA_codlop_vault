---
tc_id: TC-API-DASH-EMP-CREATE-024
title: Unauthorized User Access
priority: High
status:
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
curl --location --request POST 'https://seyanty.info/api/dashboard/employees' \
--header 'Authorization: Bearer <non-admin-user-token>' \
--header 'Accept: */*' \
--header 'Content-Type: multipart/form-data' \
--form 'name="employee-10"' \
--form 'email="employee-10@mail.com"' \
--form 'password="Admin#123"' \
--form 'phone="0500000110"' \
--form 'photo=@"/home/am/Pictures/profile/male/79ad7b7a-99da-4e20-962d-1e9fc405312b.jpeg"' \
--form 'job_title="eng"' \
--form 'overview="Test overview"'
```

---
*Last Updated: 2026-08-23 10:00:00*