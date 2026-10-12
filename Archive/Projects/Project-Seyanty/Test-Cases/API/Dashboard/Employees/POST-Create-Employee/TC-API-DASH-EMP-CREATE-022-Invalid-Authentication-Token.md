---
tc_id: TC-API-DASH-EMP-CREATE-022
title: Invalid Authentication Token
priority: High
status:
  - completed
type: Functional
linked_requirement: REQ-DASH-EMP-016
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
- Invalid/malformed Bearer token available

# Steps
1. Prepare multipart/form-data request with all valid employee fields
2. Set Authorization header with invalid Bearer token (e.g., "Bearer invalid-token", "Bearer ", malformed JWT)
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
    "message": "لابد من تسجيل الدخول أولا",
    "data": null
}
```
OR
```json
{
    "status": "error",
    "code": 401,
    "message": "رمز المصادقة غير صالح",
    "data": null
}
```
- **Database Assertions:** No employee record created

# Notes
- Invalid token should be rejected
- Error message is in Arabic as per API localization
- Token validation includes signature verification, format validation

# Attachments/Script
```bash
curl --location --request POST 'https://seyanty.info/api/dashboard/employees' \
--header 'Authorization: Bearer invalid-token-12345' \
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