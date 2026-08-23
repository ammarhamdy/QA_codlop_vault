---
tc_id: TC-API-DASH-EMP-CREATE-025
title: Invalid HTTP Method
priority: High
status:
type: Functional
linked_requirement: REQ-DASH-EMP-019
tags:
  - test-case
  - api
  - dashboard
  - employees
  - create
  - negative
  - http-method
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
1. Prepare request with valid employee data
2. Set Authorization header with valid Bearer token
3. Send GET request to https://seyanty.info/api/dashboard/employees
4. Capture response status code, headers, and body
5. Repeat for PUT, PATCH, DELETE methods

# Expected Result
- **HTTP Status Code:** 405 Method Not Allowed
- **Response Headers:** Content-Type: application/json, Allow: POST
- **Response Body:**
```json
{
    "status": "error",
    "code": 405,
    "message": "الطريقة غير مسموحة",
    "data": null
}
```
- **Database Assertions:** No employee record created

# Notes
- Only POST method should be allowed for this endpoint
- Error message is in Arabic as per API localization
- Allow header should indicate POST as allowed method

# Attachments/Script
```bash
# Test GET method
curl --location --request GET 'https://seyanty.info/api/dashboard/employees' \
--header 'Authorization: Bearer <valid-token>' \
--header 'Accept: */*'

# Test PUT method
curl --location --request PUT 'https://seyanty.info/api/dashboard/employees' \
--header 'Authorization: Bearer <valid-token>' \
--header 'Accept: */*' \
--header 'Content-Type: multipart/form-data' \
--form 'name="employee-10"' \
--form 'email="employee-10@mail.com"' \
--form 'password="Admin#123"' \
--form 'phone="0500000110"' \
--form 'job_title="eng"'
```

---
*Last Updated: 2026-08-23 10:00:00*