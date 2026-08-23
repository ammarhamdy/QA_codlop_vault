---
tc_id: TC-API-DASH-EMP-CREATE-027
title: Invalid Content-Type
priority: High
status:
type: Functional
linked_requirement: REQ-DASH-EMP-021
tags:
  - test-case
  - api
  - dashboard
  - employees
  - create
  - negative
  - content-type
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

# Steps
1. Prepare request with all valid employee fields as JSON payload
2. Set Authorization header with valid Bearer token
3. Set Content-Type header to application/json (incorrect for file upload)
4. Send POST request to https://seyanty.info/api/dashboard/employees
5. Capture response status code, headers, and body

# Expected Result
- **HTTP Status Code:** 415 Unsupported Media Type (or 400 Bad Request)
- **Response Headers:** Content-Type: application/json
- **Response Body:**
```json
{
    "status": "error",
    "code": 415,
    "message": "نوع المحتوى غير مدعوم، يجب استخدام multipart/form-data",
    "data": null
}
```
- **Database Assertions:** No employee record created

# Notes
- Endpoint requires multipart/form-data for file upload support
- application/json will not work for file uploads
- Error message is in Arabic as per API localization

# Attachments/Script
```bash
curl --location --request POST 'https://seyanty.info/api/dashboard/employees' \
--header 'Authorization: Bearer <valid-token>' \
--header 'Accept: */*' \
--header 'Content-Type: application/json' \
--data-raw '{
    "name": "employee-10",
    "email": "employee-10@mail.com",
    "password": "Admin#123",
    "phone": "0500000110",
    "job_title": "eng",
    "overview": "Test overview"
}'
```

---
*Last Updated: 2026-08-23 10:00:00*