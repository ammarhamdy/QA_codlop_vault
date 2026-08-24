---
tc_id: TC-API-DASH-EMP-UPDATE-011
title: Missing Employee Identifier
module: Dashboard - Employees
endpoint: /api/dashboard/employees/:id
method: POST
severity: High
priority: High
type: Functional
author: QA Automation Engineer
status:
  - Ready
linked_requirement: REQ-EMP-011
tags:
  - api
  - employee
  - update
  - missing-id
  - negative
run_result: Pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| employee_id | (missing - no ID in URL) |
| name | employee-10.1 |
| email | employee-10@mail.com |
| phone | 0500000110 |
| job_title | engineer |

# Preconditions
- Valid authentication token (Bearer token) is available
- Test environment is accessible at https://seyanty.info
- Request made to base endpoint without ID parameter

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
| id | (omitted) |

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
curl --location --request POST 'https://seyanty.info/api/dashboard/employees/' \
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
2. Send POST request to /api/dashboard/employees/ (without ID)
3. Capture response
4. Verify routing error returned

# Expected Result
## HTTP Response
- **Status Code**: 404 Not Found (route not matched) OR 405 Method Not Allowed

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
    "code": 405,
    "message": "Method Not Allowed",
    "data": null
}
```

## Database Assertions
- No employee records modified

# Post-conditions / Cleanup
- No cleanup required

# Notes
- Tests route parameter validation
- Laravel route requires {id} parameter
- Missing ID results in route not matching (404) or method mismatch (405)

# Attachments/Script
- Test script: tests/api/employees/update_missing_employee_id.py

---
*Last Updated: 2026-08-23 10:00:00*