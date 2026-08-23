---
tc_id: TC-API-DASH-EMP-DELETE-003
title: Invalid Employee Identifier
priority: High
status:
type: Functional
linked_requirement: REQ-DASH-EMP-003
tags:
  - test-case
  - delete-employee
  - invalid-id
  - validation
  - api
---

# Test Data
| Field | Value |
| ----- | ----- |
| endpoint | DELETE https://seyanty.info/api/dashboard/employees/:id |
| employee_id | Invalid formats: "abc", "0", "-1", "999999999", "12.34", "!@#" |
| auth_token | Valid Bearer token for authenticated dashboard user |
| expected_status | 400 or 404 |

# Preconditions
- Valid authentication token available for dashboard user
- Employee IDs used do not correspond to any existing employee records

# Steps
1. Prepare DELETE request to `https://seyanty.info/api/dashboard/employees/abc` (non-numeric ID)
2. Include valid Authorization header
3. Send the DELETE request
4. Capture response status code, headers, and body
5. Verify error response for invalid identifier format
6. Repeat for each invalid format: "0", "-1", "999999999", "12.34", "!@#"

# Expected Result
- HTTP Status Code: 400 Bad Request (validation error) or 404 Not Found
- Response Headers: Content-Type: application/json
- Response Body (400):
```json
{
    "status": "error",
    "code": 400,
    "message": "معرف الموظف غير صالح",
    "data": null
}
```
- Response Body (404):
```json
{
    "status": "error",
    "code": 404,
    "message": "هذا الموظف غير موجود",
    "data": null
}
```
- No database changes

# Notes
- Tests input validation for employee ID path parameter
- Non-numeric, zero, negative, decimal, and special character IDs should all be rejected
- API should handle type coercion safely without errors

# Attachments/Script
```bash
curl --location --request DELETE 'https://seyanty.info/api/dashboard/employees/abc' \
--header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
--header 'Authorization: Bearer <valid-token>' \
--header 'Accept: */*' \
--header 'Host: seyanty.info' \
--header 'Connection: keep-alive'
```

---
*Last Updated: 2026-08-23 10:51*