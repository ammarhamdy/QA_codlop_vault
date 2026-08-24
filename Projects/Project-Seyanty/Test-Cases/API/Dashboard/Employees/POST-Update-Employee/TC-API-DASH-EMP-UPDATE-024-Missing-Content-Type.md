---
tc_id: TC-API-DASH-EMP-UPDATE-024
title: Missing Content-Type Header
module: Dashboard - Employees
endpoint: /api/dashboard/employees/:id
method: POST
severity: High
priority: Medium
type: Functional
author: QA Automation Engineer
status:
  - Ready
linked_requirement: REQ-API-002
tags:
  - api
  - employee
  - update
  - content-type
  - missing-header
  - negative
---

# Test Data
| Field | Value |
| ----- | ----- |
| employee_id | 63 (existing employee) |
| name | employee-10.1 |
| email | employee-10@mail.com |
| phone | 0500000110 |
| job_title | engineer |

# Preconditions
- Valid authentication token (Bearer token) is available
- Employee with ID 63 exists in the database
- No Content-Type header sent
- Test environment is accessible at https://seyanty.info

# Request Details
## Headers
| Header | Value |
| ------ | ----- |
| Authorization | Bearer <valid_token> |
| Accept | */* |
| Content-Type | (omitted) |

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
2. Send POST request without Content-Type header (curl --form sets it automatically, so use raw body)
3. Capture response
4. Verify appropriate error or handling

# Expected Result
## HTTP Response
- **Status Code**: 415 Unsupported Media Type OR 422 Unprocessable Entity

## Response Body
```json
{
    "status": "error",
    "code": 415,
    "message": "Unsupported Media Type",
    "data": null
}
```
OR (if multipart parsed without header)
- **Status Code**: 200 OK (if server auto-detects)

# Post-conditions / Cleanup
- No cleanup required

# Notes
- Tests Content-Type header requirement
- multipart/form-data required for file uploads
- curl --form automatically sets Content-Type with boundary
- Raw request without header may behave differently

# Attachments/Script
- Test script: tests/api/employees/update_missing_content_type.py

---
*Last Updated: 2026-08-23 10:00:00*