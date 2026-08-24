---
tc_id: TC-API-DASH-EMP-UPDATE-023
title: Invalid HTTP Method
module: Dashboard - Employees
endpoint: /api/dashboard/employees/:id
method: GET
severity: Medium
priority: Medium
type: Functional
author: QA Automation Engineer
status:
  - Ready
linked_requirement: REQ-API-001
tags:
  - api
  - employee
  - update
  - http-method
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
- Update endpoint only accepts POST with _method=put
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

## cURL Command (GET instead of POST)
```bash
curl --location --request GET 'https://seyanty.info/api/dashboard/employees/63' \
--header 'Authorization: Bearer <valid_token>' \
--header 'Accept: */*'
```

# Steps
1. Prepare valid authentication token
2. Send GET request to update endpoint (should be POST)
3. Capture response
4. Verify 405 Method Not Allowed returned

# Expected Result
## HTTP Response
- **Status Code**: 405 Method Not Allowed

## Response Body
```json
{
    "status": "error",
    "code": 405,
    "message": "Method Not Allowed",
    "data": null
}
```

## Response Headers
- **Allow**: POST

## Database Assertions
- Employee 63 data remains unchanged

# Post-conditions / Cleanup
- No cleanup required

# Notes
- Tests HTTP method enforcement
- Laravel route: POST only for update (with method spoofing)
- Allow header should indicate POST

# Attachments/Script
- Test script: tests/api/employees/update_invalid_http_method.py

---
*Last Updated: 2026-08-23 10:00:00*