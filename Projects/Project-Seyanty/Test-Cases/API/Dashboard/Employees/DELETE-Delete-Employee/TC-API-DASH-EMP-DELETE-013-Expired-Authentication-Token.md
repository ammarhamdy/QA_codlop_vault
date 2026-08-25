---
tc_id: TC-API-DASH-EMP-DELETE-013
title: Expired Authentication Token
priority: High
status:
  - Ready
type: Security
linked_requirement: REQ-DASH-EMP-013
tags:
  - test-case
  - delete-employee
  - authentication
  - expired-token
  - security
  - api
run_result: Pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| endpoint | DELETE https://seyanty.info/api/dashboard/employees/:id |
| employee_id | Valid existing employee ID (e.g., 123) |
| auth_token | Valid but expired JWT token |
| expected_status | 401 |

# Preconditions
- Employee with ID `123` exists in database
- Previously valid token that has expired (past exp claim)
- Token signature valid but expiration time passed

# Steps
1. Prepare DELETE request to `https://seyanty.info/api/dashboard/employees/123`
2. Include Authorization header with expired token: `Authorization: Bearer <expired-token>`
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
- No database changes

# Notes
- Tests token expiration handling
- Same generic error message for security (don't reveal token expired vs invalid)
- Token should be rejected at validation layer before business logic

# Attachments/Script
```bash
curl --location --request DELETE 'https://seyanty.info/api/dashboard/employees/123' \
--header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
--header 'Authorization: Bearer <expired-token>' \
--header 'Accept: */*' \
--header 'Host: seyanty.info' \
--header 'Connection: keep-alive'
```

---
*Last Updated: 2026-08-23 10:51*