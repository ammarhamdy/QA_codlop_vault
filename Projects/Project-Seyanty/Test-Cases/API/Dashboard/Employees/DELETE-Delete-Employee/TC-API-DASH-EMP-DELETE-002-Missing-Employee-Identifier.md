---
tc_id: TC-API-DASH-EMP-DELETE-002
title: Missing Employee Identifier
priority: High
status:
  - Ready
type: Functional
linked_requirement: REQ-DASH-EMP-002
tags:
  - test-case
  - delete-employee
  - missing-id
  - validation
  - api
run_result: Pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| endpoint | DELETE https://seyanty.info/api/dashboard/employees/ |
| employee_id | (empty/missing) |
| auth_token | Valid Bearer token for authenticated dashboard user |
| expected_status | 404 or 400 |

# Preconditions
- Valid authentication token available for dashboard user
- No employee ID provided in the URL path (endpoint called as `/api/dashboard/employees/` without ID)

# Steps
1. Prepare DELETE request to `https://seyanty.info/api/dashboard/employees/` (without employee ID in path)
2. Include valid Authorization header
3. Send the DELETE request
4. Capture response status code, headers, and body
5. Verify error response for missing identifier

# Expected Result
- HTTP Status Code: 404 Not Found (or 400 Bad Request depending on routing implementation)
- Response Headers: Content-Type: application/json
- Response Body (404):
```json
{
    "status": "error",
    "code": 404,
    "message": "هذا الموظف غير موجود",
    "data": null
}
```
- Or Response Body (400):
```json
{
    "status": "error",
    "code": 400,
    "message": "معرف الموظف مطلوب",
    "data": null
}
```
- No database changes (no employee deleted)

# Notes
- Tests routing/path parameter validation
- Framework may return 404 (route not matched) or 400 (validation error) - both acceptable
- Arabic error message should be validated

# Attachments/Script
```bash
curl --location --request DELETE 'https://seyanty.info/api/dashboard/employees/' \
--header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
--header 'Authorization: Bearer <valid-token>' \
--header 'Accept: */*' \
--header 'Host: seyanty.info' \
--header 'Connection: keep-alive'
```

---
*Last Updated: 2026-08-23 10:51*