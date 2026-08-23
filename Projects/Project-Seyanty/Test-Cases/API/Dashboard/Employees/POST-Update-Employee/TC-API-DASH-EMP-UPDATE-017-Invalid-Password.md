---
tc_id: TC-API-DASH-EMP-UPDATE-017
title: Invalid Password
module: Dashboard - Employees
endpoint: /api/dashboard/employees/:id
method: POST
severity: High
priority: High
type: Functional
author: QA Automation Engineer
status:
linked_requirement: REQ-EMP-017
tags:
  - api
  - employee
  - update
  - validation
  - password
  - negative
---

# Test Data
| Field | Value |
| ----- | ----- |
| employee_id | 63 (existing employee) |
| name | employee-10.1 |
| email | employee-10@mail.com |
| phone | 0500000110 |
| password | weak (too short, no complexity) |
| job_title | engineer |

# Preconditions
- Valid authentication token (Bearer token) is available
- Employee with ID 63 exists in the database
- Password policy: min 8 chars, uppercase, lowercase, number, special char
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
| email | employee-10@mail.com | text |
| phone | 0500000110 | text |
| password | weak | text |
| job_title | engineer | text |

## cURL Command
```bash
curl --location --request POST 'https://seyanty.info/api/dashboard/employees/63' \
--header 'Authorization: Bearer <valid_token>' \
--header 'Accept: */*' \
--form '_method="put"' \
--form 'name="employee-10.1"' \
--form 'email="employee-10@mail.com"' \
--form 'phone="0500000110"' \
--form 'password="weak"' \
--form 'job_title="engineer"'
```

# Steps
1. Prepare valid authentication token
2. Verify employee with ID 63 exists
3. Send POST request with weak password (fails complexity)
4. Capture response
5. Verify validation error for password strength
6. Verify employee data unchanged in database
6. Verify password not returned in error response

# Expected Result
## HTTP Response
- **Status Code**: 422 Unprocessable Entity

## Response Body
```json
{
    "status": "error",
    "code": 422,
    "message": "كلمة المرور ضعيفة",
    "errors": {
        "password": ["كلمة المرور يجب أن تكون 8 أحرف على الأقل وتحتوي على حروف كبيرة وصغيرة وأرقام ورموز"]
    }
}
```
OR
```json
{
    "status": "error",
    "code": 422,
    "message": "Password does not meet requirements.",
    "errors": {
        "password": ["Password must be at least 8 characters with uppercase, lowercase, number, and special character."]
    }
}
```

## Database Assertions
- Employee 63 password hash remains unchanged

## Security Assertions
- Password not exposed in error response
- Weak password rejected before hashing

# Post-conditions / Cleanup
- No cleanup required (update rejected)

# Notes
- Tests password complexity validation
- Empty password = no change (valid, tested in TC-001)
- Weak password = validation error
- Password never returned in any response

# Attachments/Script
- Test script: tests/api/employees/update_invalid_password.py

---
*Last Updated: 2026-08-23 10:00:00*