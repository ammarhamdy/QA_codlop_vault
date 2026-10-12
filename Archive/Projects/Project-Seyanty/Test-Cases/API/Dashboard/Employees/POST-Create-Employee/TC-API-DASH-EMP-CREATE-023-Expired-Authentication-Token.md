---
tc_id: TC-API-DASH-EMP-CREATE-023
title: Expired Authentication Token
priority: High
status:
  - completed
type: Functional
linked_requirement: REQ-DASH-EMP-017
tags:
  - test-case
  - api
  - dashboard
  - employees
  - create
  - negative
  - security
  - authentication
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
- Expired Bearer token available (token past its expiration time)

# Steps
1. Prepare multipart/form-data request with all valid employee fields
2. Set Authorization header with expired Bearer token
3. Send POST request to https://seyanty.info/api/dashboard/employees
4. Capture response status code, headers, and body

# Expected Result
- **HTTP Status Code:** 401 Unauthorized
- **Response Headers:** Content-Type: application/json
- **Response Body:**
```json
{
    "status": "error",
    "code": 401,
    "message": "انتهت صلاحية الجلسة، يرجى تسجيل الدخول مرة أخرى",
    "data": null
}
```
OR
```json
{
    "status": "error",
    "code": 401,
    "message": "لابد من تسجيل الدخول أولا",
    "data": null
}
```
- **Database Assertions:** No employee record created

# Notes
- Expired token should be rejected with appropriate message
- Token expiration is typically 24 hours or configured TTL
- Error message is in Arabic as per API localization

# Attachments/Script
```bash
curl --location --request POST 'https://seyanty.info/api/dashboard/employees' \
--header 'Authorization: Bearer <expired-token>' \
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