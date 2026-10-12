---
tc_id: TC-API-DASH-EMP-UPDATE-005
title: Duplicate Email Validation
module: Dashboard - Employees
endpoint: /api/dashboard/employees/:id
method: POST
severity: High
priority: High
type: Functional
author: QA Automation Engineer
status:
  - Ready
linked_requirement: REQ-EMP-005
tags:
  - api
  - employee
  - update
  - email
  - validation
  - negative
run_result: Pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| employee_id | 63 (existing employee) |
| name | employee-10.1 |
| email | existing-employee@mail.com (email of employee ID 64) |
| phone | 0500000110 |
| job_title | engineer |

# Preconditions
- Valid authentication token (Bearer token) is available
- Employee with ID 63 exists in the database
- Employee with ID 64 exists with email "existing-employee@mail.com"
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
| id | 63 |

## Form Data Payload
| Field | Value | Type |
| ----- | ----- | ---- |
| _method | put | text |
| name | employee-10.1 | text |
| email | existing-employee@mail.com | text |
| phone | 0500000110 | text |
| job_title | engineer | text |

## cURL Command
```bash
curl --location --request POST 'https://seyanty.info/api/dashboard/employees/63' \
--header 'Authorization: Bearer <valid_token>' \
--header 'Accept: */*' \
--form '_method="put"' \
--form 'name="employee-10.1"' \
--form 'email="existing-employee@mail.com"' \
--form 'phone="0500000110"' \
--form 'job_title="engineer"'
```

# Steps
1. Prepare valid authentication token
2. Verify employee with ID 63 exists
3. Verify employee with ID 64 exists with email "existing-employee@mail.com"
4. Send POST request to update employee 63 with email of employee 64
5. Capture response
6. Verify validation error returned
7. Verify employee 63 data unchanged in database

# Expected Result
## HTTP Response
- **Status Code**: 422 Unprocessable Entity (or 400 Bad Request)

## Response Body
```json
{
    "status": "error",
    "code": 422,
    "message": "البريد الإلكتروني مستخدم مسبقاً",
    "data": null
}
```
OR
```json
{
    "status": "error",
    "code": 422,
    "message": "The email has already been taken.",
    "errors": {
        "email": ["The email has already been taken."]
    }
}
```

## Database Assertions
- Employee 63 email remains unchanged
- Employee 64 email remains unchanged
- No duplicate emails in database

# Post-conditions / Cleanup
- No cleanup required (update rejected)

# Notes
- Tests email uniqueness constraint
- Arabic error message expected: "البريد الإلكتروني مستخدم مسبقاً"
- Validation should occur before database update

# Attachments/Script
- Test script: tests/api/employees/update_employee_duplicate_email.py

---
*Last Updated: 2026-08-23 10:00:00*