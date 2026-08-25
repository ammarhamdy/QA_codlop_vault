---
tc_id: TC-API-DASH-EMP-UPDATE-022
title: Unauthorized User Access
module: Dashboard - Employees
endpoint: /api/dashboard/employees/:id
method: POST
severity: Critical
priority: High
type: Security
author: QA Automation Engineer
status:
  - Ready
linked_requirement: REQ-SEC-004
tags:
  - api
  - employee
  - update
  - authorization
  - rbac
  - negative
  - security
run_result: Pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| employee_id | 63 (existing employee) |
| name | employee-10.1 |
| email | employee-10@mail.com |
| phone | 0500000110 |
| job_title | engineer |
| token | valid-token-for-user-without-permission |

# Preconditions
- Valid authentication token for user WITHOUT employee update permission
- Employee with ID 63 exists in the database
- User role: e.g., "viewer" or "sales" without "employee.update" permission
- Test environment is accessible at https://seyanty.info

# Request Details
## Headers
| Header | Value |
| ------ | ----- |
| Authorization | Bearer <valid_token_no_permission> |
| Accept | */* |
| Content-Type | multipart/form-data |

## Path Parameters
| Parameter | Value |
| --------- | ----- |
| id | 63 |

## Form Data Payload
| Field | Value | Type |
| ----- | ----- | ---- |
| _method | put | text |
| name | employee-10.1 | text |
| email | employee-10@mail.com | text |
| phone | 0500000110 | text |
| job_title | engineer | text |

## cURL Command
```bash
curl --location --request POST 'https://seyanty.info/api/dashboard/employees/63' \
--header 'Authorization: Bearer <valid_token_no_permission>' \
--header 'Accept: */*' \
--form '_method="put"' \
--form 'name="employee-10.1"' \
--form 'email="employee-10@mail.com"' \
--form 'phone="0500000110"' \
--form 'job_title="engineer"'
```

# Steps
1. Obtain valid token for user without update permission
2. Send POST request to update employee
3. Capture response
4. Verify 403 Forbidden returned
5. Verify no employee data modified

# Expected Result
## HTTP Response
- **Status Code**: 403 Forbidden

## Response Body
```json
{
    "status": "error",
    "code": 403,
    "message": "غير مصرح لك بتنفيذ هذا الإجراء",
    "data": null
}
```
OR
```json
{
    "status": "error",
    "code": 403,
    "message": "This action is unauthorized.",
    "data": null
}
```

## Database Assertions
- Employee 63 data remains unchanged

# Post-conditions / Cleanup
- No cleanup required

# Notes
- Tests Role-Based Access Control (RBAC)
- Authenticated but unauthorized (403 vs 401)
- Arabic error message: "غير مصرح لك بتنفيذ هذا الإجراء"
- Requires permission system implementation

# Attachments/Script
- Test script: tests/api/employees/update_unauthorized_access.py

---
*Last Updated: 2026-08-23 10:00:00*