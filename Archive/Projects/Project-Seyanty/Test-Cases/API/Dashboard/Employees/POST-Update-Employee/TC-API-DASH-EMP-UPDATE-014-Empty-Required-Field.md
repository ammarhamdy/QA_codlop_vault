---
tc_id: TC-API-DASH-EMP-UPDATE-014
title: Empty Required Field
module: Dashboard - Employees
endpoint: /api/dashboard/employees/:id
method: POST
severity: High
priority: High
type: Functional
author: QA Automation Engineer
status:
  - Ready
linked_requirement: REQ-EMP-014
tags:
  - api
  - employee
  - update
  - validation
  - empty-field
  - negative
run_result: Pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| employee_id | 63 (existing employee) |
| name | employee-10.1 |
| email | employee-10@mail.com |
| phone | "" (empty string) |
| job_title | engineer |

# Preconditions
- Valid authentication token (Bearer token) is available
- Employee with ID 63 exists in the database
- Phone field is required and cannot be empty
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
| phone |  | text |
| job_title | engineer | text |

## cURL Command
```bash
curl --location --request POST 'https://seyanty.info/api/dashboard/employees/63' \
--header 'Authorization: Bearer <valid_token>' \
--header 'Accept: */*' \
--form '_method="put"' \
--form 'name="employee-10.1"' \
--form 'email="employee-10@mail.com"' \
--form 'phone=""' \
--form 'job_title="engineer"'
```

# Steps
1. Prepare valid authentication token
2. Verify employee with ID 63 exists
3. Send POST request with empty phone field
4. Capture response
5. Verify validation error for empty phone
6. Verify employee data unchanged in database

# Expected Result
## HTTP Response
- **Status Code**: 422 Unprocessable Entity

## Response Body
```json
{
    "status": "error",
    "code": 422,
    "message": "رقم الهاتف لا يمكن أن يكون فارغاً",
    "errors": {
        "phone": ["حقل رقم الهاتف لا يمكن أن يكون فارغاً"]
    }
}
```
OR
```json
{
    "status": "error",
    "code": 422,
    "message": "The phone field cannot be empty.",
    "errors": {
        "phone": ["The phone field cannot be empty."]
    }
}
```

## Database Assertions
- Employee 63 data remains unchanged

# Post-conditions / Cleanup
- No cleanup required (update rejected)

# Notes
- Tests empty string validation for required fields
- Different from missing field (TC-013) - field present but empty
- Arabic validation messages expected

# Attachments/Script
- Test script: tests/api/employees/update_empty_required_field.py

---
*Last Updated: 2026-08-23 10:00:00*