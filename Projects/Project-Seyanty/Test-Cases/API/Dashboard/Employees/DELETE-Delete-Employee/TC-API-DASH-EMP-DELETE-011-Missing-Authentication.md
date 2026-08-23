---
tc_id: TC-API-DASH-EMP-DELETE-011
title: Missing Authentication
priority: High
status:
type: Security
linked_requirement: REQ-DASH-EMP-011
tags:
  - test-case
  - delete-employee
  - authentication
  - missing-auth
  - security
  - api
---

# Test Data
| Field | Value |
| ----- | ----- |
| endpoint | DELETE https://seyanty.info/api/dashboard/employees/:id |
| employee_id | Valid existing employee ID (e.g., 123) |
| auth_token | (none - header omitted) |
| expected_status | 401 |

# Preconditions
- Employee with ID `123` exists in database
- Request sent WITHOUT Authorization header

# Steps
1. Prepare DELETE request to `https://seyanty.info/api/dashboard/employees/123`
2. OMIT Authorization header entirely
3. Send the DELETE request
4. Capture response status code, headers, and body
5. Verify 401 Unauthorized response

# Expected Result
- HTTP Status Code: 401 Unauthorized
- Response Headers: Content-Type: application/json
- Response Body:
```json
{
    "status": "error",
    "code": 401,
    "message": "لابد من تسجيل الدخول أولا",
    "data": null
}
```
- No database changes (employee not deleted)

# Notes
- Tests authentication requirement enforcement
- Arabic message "لابد من تسجيل الدخول أولا" must match exactly
- Should return 401 regardless of employee existence

# Attachments/Script
```bash
curl --location --request DELETE 'https://seyanty.info/api/dashboard/employees/123' \
--header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
--header 'Accept: */*' \
--header 'Host: seyanty.info' \
--header 'Connection: keep-alive'
```

---
*Last Updated: 2026-08-23 10:51*