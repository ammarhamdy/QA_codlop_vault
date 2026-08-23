---
tc_id: TC-API-DASH-EMP-UPDATE-021
title: Expired Authentication Token
module: Dashboard - Employees
endpoint: /api/dashboard/employees/:id
method: POST
severity: Critical
priority: High
type: Security
author: QA Automation Engineer
status:
linked_requirement: REQ-SEC-003
tags:
  - api
  - employee
  - update
  - authentication
  - expired-token
  - negative
  - security
---

# Test Data
| Field | Value |
| ----- | ----- |
| employee_id | 63 (existing employee) |
| name | employee-10.1 |
| email | employee-10@mail.com |
| phone | 0500000110 |
| job_title | engineer |
| token | expired-jwt-token |

# Preconditions
- Previously valid JWT token that has expired (exp claim in past)
- Employee with ID 63 exists in the database
- Token expiration time known and past
- Test environment is accessible at https://seyanty.info

# Request Details
## Headers
| Header | Value |
| ------ | ----- |
| Authorization | Bearer <expired_token> |
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
--header 'Authorization: Bearer <expired_token>' \
--header 'Accept: */*' \
--form '_method="put"' \
--form 'name="employee-10.1"' \
--form 'email="employee-10@mail.com"' \
--form 'phone="0500000110"' \
--form 'job_title="engineer"'
```

# Steps
1. Obtain a valid token and wait for expiration (or use pre-expired token)
2. Send POST request with expired Bearer token
3. Capture response
4. Verify 401 Unauthorized returned
5. Verify no employee data modified

# Expected Result
## HTTP Response
- **Status Code**: 401 Unauthorized

## Response Body
```json
{
    "status": "error",
    "code": 401,
    "message": "انتهت صلاحية الجلسة، يرجى تسجيل الدخول مرة أخرى",
    "data": null
}
```
OR
```json
{
    "status": "error",
    "code": 401,
    "message": "Token has expired.",
    "data": null
}
```

## Database Assertions
- Employee 63 data remains unchanged

# Post-conditions / Cleanup
- No cleanup required

# Notes
- Tests JWT expiration validation (exp claim)
- Arabic error message: "انتهت صلاحية الجلسة، يرجى تسجيل الدخول مرة أخرى"
- Token should be rejected even if signature valid but expired

# Attachments/Script
- Test script: tests/api/employees/update_expired_token.py

---
*Last Updated: 2026-08-23 10:00:00*