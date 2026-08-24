---
tc_id: TC-API-DASH-EMP-UPDATE-020
title: Invalid Authentication Token
module: Dashboard - Employees
endpoint: /api/dashboard/employees/:id
method: POST
severity: Critical
priority: High
type: Security
author: QA Automation Engineer
status:
  - Ready
linked_requirement: REQ-SEC-002
tags:
  - api
  - employee
  - update
  - authentication
  - invalid-token
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
| token | invalid-token-12345 |

# Preconditions
- Invalid/malformed Bearer token
- Employee with ID 63 exists in the database
- Test environment is accessible at https://seyanty.info

# Request Details
## Headers
| Header | Value |
| ------ | ----- |
| Authorization | Bearer invalid-token-12345 |
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
--header 'Authorization: Bearer invalid-token-12345' \
--header 'Accept: */*' \
--form '_method="put"' \
--form 'name="employee-10.1"' \
--form 'email="employee-10@mail.com"' \
--form 'phone="0500000110"' \
--form 'job_title="engineer"'
```

# Steps
1. Send POST request with invalid/malformed Bearer token
2. Capture response
3. Verify 401 Unauthorized returned
4. Verify no employee data modified

# Expected Result
## HTTP Response
- **Status Code**: 401 Unauthorized

## Response Body
```json
{
    "status": "error",
    "code": 401,
    "message": "رمز المصادقة غير صالح",
    "data": null
}
```
OR
```json
{
    "status": "error",
    "code": 401,
    "message": "Unauthenticated.",
    "data": null
}
```

## Database Assertions
- Employee 63 data remains unchanged

# Post-conditions / Cleanup
- No cleanup required

# Notes
- Tests token validation (JWT signature, format, parsing)
- Invalid token: malformed, wrong signature, tampered
- Arabic error message possible: "رمز المصادقة غير صالح"

# Attachments/Script
- Test script: tests/api/employees/update_invalid_token.py

---
*Last Updated: 2026-08-23 10:00:00*