---
tc_id: TC-API-DASH-EMP-CREATE-020
title: Create Employee Without Profile Photo
priority: Medium
status:
type: Functional
linked_requirement: REQ-DASH-EMP-014
tags:
  - test-case
  - api
  - dashboard
  - employees
  - create
  - positive
  - optional-field
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
| photo | (omitted) |

# Preconditions
- Valid authentication token (Bearer token) available for admin user
- Database is in clean state
- API server is running and accessible at https://seyanty.info

# Steps
1. Prepare multipart/form-data request with all required fields but NO photo field
2. Set Authorization header with valid Bearer token
3. Send POST request to https://seyanty.info/api/dashboard/employees
4. Capture response status code, headers, and body
5. Verify employee record exists in database with photo as default/null

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
        "photo": null,
        "job_title": "eng",
        "overview": "Test overview",
        "status": "active",
        "is_blocked": "active",
        "orders_count": null
    }
}
```
- **Database Assertions:**
  - Employee record exists with photo = null (or default placeholder URL)

# Notes
- Photo is an optional field
- When not provided, photo should be null or default placeholder
- Response message is in Arabic as per API localization

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
--form 'job_title="eng"' \
--form 'overview="Test overview"'
```

---
*Last Updated: 2026-08-23 10:00:00*