---
tc_id: TC-API-DASH-EMP-UPDATE-025
title: Invalid Content-Type
module: Dashboard - Employees
endpoint: /api/dashboard/employees/:id
method: POST
severity: High
priority: Medium
type: Functional
author: QA Automation Engineer
status:
  - Ready
linked_requirement: REQ-API-003
tags:
  - api
  - employee
  - update
  - content-type
  - invalid-header
  - negative
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

# Preconditions
- Valid authentication token (Bearer token) is available
- Employee with ID 63 exists in the database
- Content-Type set to application/json (wrong for multipart form)
- Test environment is accessible at https://seyanty.info

# Request Details
## Headers
| Header | Value |
| ------ | ----- |
| Authorization | Bearer <valid_token> |
| Accept | */* |
| Content-Type | application/json |

## Path Parameters
| Parameter | Value |
| --------- | ----- |
| id | 63 |

## JSON Payload (incorrect for multipart endpoint)
```json
{
    "_method": "put",
    "name": "employee-10.1",
    "email": "employee-10@mail.com",
    "phone": "0500000110",
    "job_title": "engineer"
}
```

## cURL Command
```bash
curl --location --request POST 'https://seyanty.info/api/dashboard/employees/63' \
--header 'Authorization: Bearer <valid_token>' \
--header 'Accept: */*' \
--header 'Content-Type: application/json' \
--data '{
    "_method": "put",
    "name": "employee-10.1",
    "email": "employee-10@mail.com",
    "phone": "0500000110",
    "job_title": "engineer"
}'
```

# Steps
1. Prepare valid authentication token
2. Send POST request with Content-Type: application/json
3. Send JSON body instead of multipart/form-data
4. Capture response
5. Verify error for unsupported media type

# Expected Result
## HTTP Response
- **Status Code**: 415 Unsupported Media Type OR 422 Unprocessable Entity

## Response Body
```json
{
    "status": "error",
    "code": 415,
    "message": "Unsupported Media Type. Expected multipart/form-data",
    "data": null
}
```
OR
```json
{
    "status": "error",
    "code": 422,
    "message": "The _method field is required.",
    "errors": {
        "_method": ["The _method field is required."]
    }
}
```

## Database Assertions
- Employee 63 data remains unchanged

# Post-conditions / Cleanup
- No cleanup required

# Notes
- Tests Content-Type validation
- Endpoint expects multipart/form-data for file upload support
- JSON payload will not populate _method and form fields correctly

# Attachments/Script
- Test script: tests/api/employees/update_invalid_content_type.py

---
*Last Updated: 2026-08-23 10:00:00*