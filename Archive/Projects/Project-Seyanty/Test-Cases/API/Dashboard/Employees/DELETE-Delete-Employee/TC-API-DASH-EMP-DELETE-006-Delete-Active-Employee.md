---
tc_id: TC-API-DASH-EMP-DELETE-006
title: Delete Active Employee
priority: High
status:
  - Ready
type: Functional
linked_requirement: REQ-DASH-EMP-006
tags:
  - test-case
  - delete-employee
  - active-employee
  - api
run_result: Pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| endpoint | DELETE https://seyanty.info/api/dashboard/employees/:id |
| employee_id | Active employee ID (e.g., 456, status=active) |
| auth_token | Valid Bearer token for authenticated dashboard user |
| expected_status | 200 |

# Preconditions
- Valid authentication token available for dashboard user
- Employee with ID `456` exists in database with `status = 'active'`
- Employee may have related data (orders, contacts, etc.) per business rules

# Steps
1. Prepare DELETE request to `https://seyanty.info/api/dashboard/employees/456`
2. Include valid Authorization header
3. Send the DELETE request
4. Capture response status code, headers, and body
5. Verify successful deletion response
6. Verify employee record removed from database
7. Verify related data handling per business rules (cascade/preserve)

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
- Database Assertion: Employee record with ID `456` permanently removed
- Related data handling verified per requirements (orders may be reassigned, archived, or preserved)

# Notes
- Tests deletion of employee in active state (typical business scenario)
- Active employees may have more associated data than inactive ones
- Business rules for related data (orders, attendance, etc.) must be validated

# Attachments/Script
```bash
curl --location --request DELETE 'https://seyanty.info/api/dashboard/employees/456' \
--header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
--header 'Authorization: Bearer <valid-token>' \
--header 'Accept: */*' \
--header 'Host: seyanty.info' \
--header 'Connection: keep-alive'
```

---
*Last Updated: 2026-08-23 10:51*