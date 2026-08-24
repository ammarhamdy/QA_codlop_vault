---
tc_id: TC-API-DASH-EMP-UPDATE-016
title: Invalid Phone Number
module: Dashboard - Employees
endpoint: /api/dashboard/employees/:id
method: POST
severity: High
priority: High
type: Functional
author: QA Automation Engineer
status:
  - Ready
linked_requirement: REQ-EMP-016
tags:
  - api
  - employee
  - update
  - validation
  - phone-format
  - negative
run_result: Fail
---

# Test Data
| Field | Value |
| ----- | ----- |
| employee_id | 63 (existing employee) |
| name | employee-10.1 |
| email | employee-10@mail.com |
| phone | 123 (invalid format) |
| job_title | engineer |

# Preconditions
- Valid authentication token (Bearer token) is available
- Employee with ID 63 exists in the database
- Valid Saudi phone format: 05XXXXXXXX (10 digits starting with 05)
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
| phone | 123 | text |
| job_title | engineer | text |

## cURL Command
```bash
curl --location --request POST 'https://seyanty.info/api/dashboard/employees/63' \
--header 'Authorization: Bearer <valid_token>' \
--header 'Accept: */*' \
--form '_method="put"' \
--form 'name="employee-10.1"' \
--form 'email="employee-10@mail.com"' \
--form 'phone="123"' \
--form 'job_title="engineer"'
```

# Steps
1. Prepare valid authentication token
2. Verify employee with ID 63 exists
3. Send POST request with invalid phone format (too short, wrong prefix)
4. Capture response
6. Verify validation error for phone format
6. Verify employee data unchanged in database

# Expected Result
## HTTP Response
- **Status Code**: 422 Unprocessable Entity

## Response Body
```json
{
    "status": "error",
    "code": 422,
    "message": "رقم الهاتف غير صالح",
    "errors": {
        "phone": ["يجب أن يكون رقم الهاتف بصيغة سعودية صحيحة (05XXXXXXXX)"]
    }
}
```
OR
```json
{
    "status": "error",
    "code": 422,
    "message": "Invalid phone number format.",
    "errors": {
        "phone": ["Phone must be a valid Saudi mobile number (05XXXXXXXX)."]
    }
}
```

## Database Assertions
- Employee 63 phone remains unchanged

# Post-conditions / Cleanup
- No cleanup required (update rejected)

# Notes
- Tests phone format validation for Saudi numbers
- Valid format: 05XXXXXXXX (10 digits)
- Invalid: too short, wrong prefix (05), non-numeric, too long
- Arabic validation messages expected

# Attachments/Script
- Test script: tests/api/employees/update_invalid_phone.py

---
*Last Updated: 2026-08-23 10:00:00*