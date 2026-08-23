---
tc_id: TC-API-DASH-EMP-UPDATE-012
title: Invalid Employee Identifier
module: Dashboard - Employees
endpoint: /api/dashboard/employees/:id
method: POST
severity: High
priority: High
type: Functional
author: QA Automation Engineer
status:
linked_requirement: REQ-EMP-012
tags:
  - api
  - employee
  - update
  - invalid-id
  - negative
---

# Test Data
| Field | Value |
| ----- | ----- |
| employee_id | abc (non-numeric) |
| name | employee-10.1 |
| email | employee-10@mail.com |
| phone | 0500000110 |
| job_title | engineer |

# Preconditions
- Valid authentication token (Bearer token) is available
- Test environment is accessible at https://seyanty.info
- Route parameter expects numeric ID

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
| id | abc |

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
curl --location --request POST 'https://seyanty.info/api/dashboard/employees/abc' \
--header 'Authorization: Bearer <valid_token>' \
--header 'Accept: */*' \
--form '_method="put"' \
--form 'name="employee-10.1"' \
--form 'email="employee-10@mail.com"' \
--form 'phone="0500000110"' \
--form 'job_title="engineer"'
```

# Steps
1. Prepare valid authentication token
2. Send POST request with non-numeric ID (abc)
3. Capture response
4. Verify validation/routing error returned

# Expected Result
## HTTP Response
- **Status Code**: 404 Not Found (route constraint fails) OR 422 Unprocessable Entity

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
    "code": 422,
    "message": "معرف الموظف غير صالح",
    "errors": {
        "id": ["The employee ID must be a valid integer."]
    }
}
```

## Database Assertions
- No employee records modified

# Post-conditions / Cleanup
- No cleanup required

# Notes
- Tests route parameter type validation
- Laravel route model binding expects integer
- Non-numeric ID may result in 404 (route not matched) or 422 (validation)

# Attachments/Script
- Test script: tests/api/employees/update_invalid_employee_id.py

---
*Last Updated: 2026-08-23 10:00:00*