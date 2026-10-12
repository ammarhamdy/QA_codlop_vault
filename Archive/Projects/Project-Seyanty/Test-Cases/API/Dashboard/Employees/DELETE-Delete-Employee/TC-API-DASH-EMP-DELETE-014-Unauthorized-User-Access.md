---
tc_id: TC-API-DASH-EMP-DELETE-014
title: Unauthorized User Access
priority: High
status:
  - Ready
type: Security
linked_requirement: REQ-DASH-EMP-014
tags:
  - test-case
  - delete-employee
  - authorization
  - rbac
  - security
  - api
run_result: Pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| endpoint | DELETE https://seyanty.info/api/dashboard/employees/:id |
| employee_id | Valid existing employee ID (e.g., 123) |
| auth_token | Valid token for user WITHOUT employee deletion permissions |
| expected_status | 403 or 401 |

# Preconditions
- Employee with ID `123` exists in database
- Valid authentication token for user with dashboard access but NO employee delete permission
- User role lacks "delete_employee" or equivalent permission

# Steps
1. Prepare DELETE request to `https://seyanty.info/api/dashboard/employees/123`
2. Include Authorization header with insufficient-privilege token
3. Send the DELETE request
4. Capture response status code, headers, and body
5. Verify access denied response

# Expected Result
- HTTP Status Code: 403 Forbidden (preferred) or 401 Unauthorized
- Response Headers: Content-Type: application/json
- Response Body (403):
```json
{
    "status": "error",
    "code": 403,
    "message": "غير مصرح لك بحذف الموظفين",
    "data": null
}
```
- Response Body (401):
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
- Tests Role-Based Access Control (RBAC) enforcement
- 403 preferred for authenticated but unauthorized; 401 acceptable if auth middleware handles both
- Arabic message for 403 should reflect permission denial

# Attachments/Script
```bash
curl --location --request DELETE 'https://seyanty.info/api/dashboard/employees/123' \
--header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
--header 'Authorization: Bearer <insufficient-privilege-token>' \
--header 'Accept: */*' \
--header 'Host: seyanty.info' \
--header 'Connection: keep-alive'
```

---
*Last Updated: 2026-08-23 10:51*