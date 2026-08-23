---
tc_id: TC-API-DASH-EMP-UPDATE-010
title: Update Non-Existent Employee
module: Dashboard - Employees
endpoint: /api/dashboard/employees/:id
method: POST
severity: High
priority: High
type: Functional
author: QA Automation Engineer
status:
linked_requirement: REQ-EMP-010
tags:
  - api
  - employee
  - update
  - not-found
  - negative
---

# Test Data
| Field | Value |
| ----- | ----- |
| employee_id | 99999 (non-existent ID) |
| name | non-existent-employee |
| email | nonexistent@mail.com |
| phone | 0500000110 |
| job_title | engineer |

# Preconditions
- Valid authentication token (Bearer token) is available
- Employee with ID 99999 does NOT exist in the database
- Test environment is accessible at https://seyanty.info

# Request Details
## Headers
| Header | Value |
| ------ | ----- |
| Authorization | Bearer <valid_token> |
| Accept | */* |
| Content-Type | multipart/form-data |

## Path Parameters
| Parameter | Value |
| --------- | ----- |
| id | 99999 |

## Form Data Payload
| Field | Value | Type |
| ----- | ----- | ---- |
| _method | put | text |
| name | non-existent-employee | text |
| email | nonexistent@mail.com | text |
| phone | 0500000110 | text |
| job_title | engineer | text |

## cURL Command
```bash
curl --location --request POST 'https://seyanty.info/api/dashboard/employees/99999' \
--header 'Authorization: Bearer <valid_token>' \
--header 'Accept: */*' \
--form '_method="put"' \
--form 'name="non-existent-employee"' \
--form 'email="nonexistent@mail.com"' \
--form 'phone="0500000110"' \
--form 'job_title="engineer"'
```

# Steps
1. Prepare valid authentication token
2. Verify employee with ID 99999 does not exist (GET returns 404)
3. Send POST request to update non-existent employee
4. Capture response
5. Verify 404 Not Found error returned
6. Verify no employee created in database

# Expected Result
## HTTP Response
- **Status Code**: 404 Not Found

## Response Body
```json
{
    "status": "error",
    "code": 404,
    "message": "Not Found",
    "data": null
}
```
OR
```json
{
    "status": "error",
    "code": 404,
    "message": "الموظف غير موجود",
    "data": null
}
```

## Database Assertions
- No new employee record created
- Existing employees unchanged

# Post-conditions / Cleanup
- No cleanup required (no changes made)

# Notes
- Tests 404 handling for non-existent resource
- Arabic error message possible: "الموظف غير موجود"
- Validates that update endpoint doesn't create new resources
- Laravel's findOrFail or similar should trigger 404

# Attachments/Script
- Test script: tests/api/employees/update_nonexistent_employee.py

---
*Last Updated: 2026-08-23 10:00:00*