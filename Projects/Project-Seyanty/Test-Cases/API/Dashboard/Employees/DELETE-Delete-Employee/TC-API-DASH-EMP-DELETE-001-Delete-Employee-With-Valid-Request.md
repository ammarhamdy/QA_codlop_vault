---
tc_id: TC-API-DASH-EMP-DELETE-001
title: Delete Employee With Valid Request
priority: High
status:
type: Functional
linked_requirement: REQ-DASH-EMP-001
tags:
  - test-case
  - delete-employee
  - valid-request
  - api
---

# Test Data
| Field | Value |
| ----- | ----- |
| endpoint | DELETE https://seyanty.info/api/dashboard/employees/:id |
| employee_id | Valid existing employee ID (e.g., 123) |
| auth_token | Valid Bearer token for authenticated dashboard user |
| expected_status | 200 |

# Preconditions
- Valid authentication token available for dashboard user with employee deletion permissions
- Target employee exists in the system with ID `123` (or any valid existing employee ID)
- Employee is in active or inactive state (deletable)
- Database contains the employee record to be deleted

# Steps
1. Prepare DELETE request to `https://seyanty.info/api/dashboard/employees/123` with valid Authorization header
2. Send the DELETE request with proper headers
3. Capture response status code, headers, and body
4. Verify response matches expected success response
5. Verify employee no longer exists in database

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
- Database Assertion: Employee record with ID `123` is permanently removed from employees table
- No related cascade deletions unless business logic requires (verify related orders/contacts remain intact per business rules)

# Notes
- This is the primary happy path test for employee deletion
- Employee ID should be dynamically obtained from test setup/precondition creation
- Token must have appropriate role/permissions for dashboard employee management

# Attachments/Script
```shell
curl --location --request DELETE 'https://seyanty.info/api/dashboard/employees/123' \
--header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
--header 'Authorization: Bearer <valid-token>' \
--header 'Accept: */*' \
--header 'Host: seyanty.info' \
--header 'Connection: keep-alive'
```

---
*Last Updated: 2026-08-23 10:51*