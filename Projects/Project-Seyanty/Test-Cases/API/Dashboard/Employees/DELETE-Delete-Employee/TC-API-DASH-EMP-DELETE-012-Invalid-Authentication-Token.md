---
tc_id: TC-API-DASH-EMP-DELETE-012
title: Invalid Authentication Token
priority: High
status:
type: Security
linked_requirement: REQ-DASH-EMP-012
tags:
  - test-case
  - delete-employee
  - authentication
  - invalid-token
  - security
  - api
---

# Test Data
| Field | Value |
| ----- | ----- |
| endpoint | DELETE https://seyanty.info/api/dashboard/employees/:id |
| employee_id | Valid existing employee ID (e.g., 123) |
| auth_token | Invalid token: "invalid-token", "Bearer invalid", malformed JWT |
| expected_status | 401 |

# Preconditions
- Employee with ID `123` exists in database
- Invalid/non-existent authentication token available

# Steps
1. Prepare DELETE request to `https://seyanty.info/api/dashboard/employees/123`
2. Include Authorization header with invalid token: `Authorization: Bearer invalid-token`
3. Send the DELETE request
4. Capture response status code, headers, and body
5. Verify 401 Unauthorized response
6. Repeat with other invalid formats: malformed JWT, empty token, random string

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
- Tests token validation and rejection of invalid tokens
- Same error message as missing auth (security - don't reveal token validity)
- Covers various invalid token formats

# Attachments/Script
```bash
curl --location --request DELETE 'https://seyanty.info/api/dashboard/employees/123' \
--header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
--header 'Authorization: Bearer invalid-token' \
--header 'Accept: */*' \
--header 'Host: seyanty.info' \
--header 'Connection: keep-alive'
```

---
*Last Updated: 2026-08-23 10:51*