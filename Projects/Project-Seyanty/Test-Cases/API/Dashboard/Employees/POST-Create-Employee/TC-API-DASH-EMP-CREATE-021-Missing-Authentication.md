---
tc_id: TC-API-DASH-EMP-CREATE-021
title: Missing Authentication
priority: High
status:
  - completed
type: Functional
linked_requirement: REQ-DASH-EMP-015
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
- NO Authorization header provided

# Steps
1. Prepare multipart/form-data request with all valid employee fields
2. Send POST request to https://seyanty.info/api/dashboard/employees WITHOUT Authorization header
3. Capture response status code, headers, and body

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
- **Database Assertions:** No employee record created

# Notes
- Authentication is mandatory for this endpoint
- Error message is in Arabic as per API localization
- Matches the 401 response from API specification

# Attachments/Script
```bash
curl --location --request POST 'https://seyanty.info/api/dashboard/employees' \
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