---
tc_id: TC-API-DASH-EMP-DELETE-007
title: Delete Inactive Employee
priority: Medium
status:
type: Functional
linked_requirement: REQ-DASH-EMP-007
tags:
  - test-case
  - delete-employee
  - inactive-employee
  - api
---

# Test Data
| Field | Value |
| ----- | ----- |
| endpoint | DELETE https://seyanty.info/api/dashboard/employees/:id |
| employee_id | Inactive employee ID (e.g., 789, status=inactive) |
| auth_token | Valid Bearer token for authenticated dashboard user |
| expected_status | 200 |

# Preconditions
- Valid authentication token available for dashboard user
- Employee with ID `789` exists in database with `status = 'inactive'`
- Employee may have historical related data

# Steps
1. Prepare DELETE request to `https://seyanty.info/api/dashboard/employees/789`
2. Include valid Authorization header
3. Send the DELETE request
4. Capture response status code, headers, and body
5. Verify successful deletion response
6. Verify employee record removed from database

# Expected Result
- HTTP Status Code: 200 OK
- Response Headers: Content-Type: application/json
- Response Body:
```json
{
    "status": "success",
    "code": 200,
    "message": "تم حذف الموظف بنجاح",
    "data": []
}
```
- Database Assertion: Employee record with ID `789` permanently removed
- Inactive employee deletion should succeed same as active

# Notes
- Tests deletion of employee in inactive/terminated state
- Inactive employees typically have less active related data
- Verifies no state-based restrictions on deletion

# Attachments/Script
```bash
curl --location --request DELETE 'https://seyanty.info/api/dashboard/employees/789' \
--header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
--header 'Authorization: Bearer <valid-token>' \
--header 'Accept: */*' \
--header 'Host: seyanty.info' \
--header 'Connection: keep-alive'
```

---
*Last Updated: 2026-08-23 10:51*