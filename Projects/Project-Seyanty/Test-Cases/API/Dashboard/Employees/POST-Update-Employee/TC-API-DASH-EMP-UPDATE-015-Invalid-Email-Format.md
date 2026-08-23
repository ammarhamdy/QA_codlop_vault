---
tc_id: TC-API-DASH-EMP-UPDATE-015
title: Invalid Email Format
module: Dashboard - Employees
endpoint: /api/dashboard/employees/:id
method: POST
severity: High
priority: High
type: Functional
author: QA Automation Engineer
status:
linked_requirement: REQ-EMP-015
tags:
  - api
  - employee
  - update
  - validation
  - email-format
  - negative
---

# Test Data
| Field | Value |
| ----- | ----- |
| employee_id | 63 (existing employee) |
| name | employee-10.1 |
| email | invalid-email-format |
| phone | 0500000110 |
| job_title | engineer |

# Preconditions
- Valid authentication token (Bearer token) is available
- Employee with ID 63 exists in the database
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
| email | invalid-email-format | text |
| phone | 0500000110 | text |
| job_title | engineer | text |

## cURL Command
```bash
curl --location --request POST 'https://seyanty.info/api/dashboard/employees/63' \
--header 'Authorization: Bearer <valid_token>' \
--header 'Accept: */*' \
--form '_method="put"' \
--form 'name="employee-10.1"' \
--form 'email="invalid-email-format"' \
--form 'phone="0500000110"' \
--form 'job_title="engineer"'
```

# Steps
1. Prepare valid authentication token
2. Verify employee with ID 63 exists
3. Send POST request with invalid email format
4. Capture response
5. Verify validation error for email format
6. Verify employee data unchanged in database

# Expected Result
## HTTP Response
- **Status Code**: 422 Unprocessable Entity

## Response Body
```json
{
    "status": "error",
    "code": 422,
    "message": "تنسيق البريد الإلكتروني غير صحيح",
    "errors": {
        "email": ["يجب أن يكون البريد الإلكتروني عنواناً صالحاً"]
    }
}
```
OR
```json
{
    "status": "error",
    "code": 422,
    "message": "The email format is invalid.",
    "errors": {
        "email": ["The email must be a valid email address."]
    }
}
```

## Database Assertions
- Employee 63 email remains unchanged

# Post-conditions / Cleanup
- No cleanup required (update rejected)

# Notes
- Tests email format validation (RFC 5322)
- Invalid formats: missing @, missing domain, spaces, special chars
- Arabic validation messages expected

# Attachments/Script
- Test script: tests/api/employees/update_invalid_email_format.py

---
*Last Updated: 2026-08-23 10:00:00*