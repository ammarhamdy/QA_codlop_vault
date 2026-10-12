---
tc_id: TC-API-DASH-EMP-UPDATE-026
title: Response Status Code Verification
module: Dashboard - Employees
endpoint: /api/dashboard/employees/:id
method: POST
severity: High
priority: High
type: Functional
author: QA Automation Engineer
status:
  - Ready
linked_requirement: REQ-API-004
tags:
  - api
  - employee
  - update
  - response-validation
  - status-code
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
--form 'job_title="engineer"' \
--write-out 'HTTP Status: %{http_code}\n'
```

# Steps
1. Prepare valid authentication token
2. Send valid POST request to update employee
3. Capture HTTP status code
4. Verify status code is 200 OK

# Expected Result
## HTTP Response
- **Status Code**: 200 OK

## Response Headers
- **Content-Type**: application/json
- **Cache-Control**: no-cache, private
- **Date**: <current_date>

# Post-conditions / Cleanup
- Revert employee data for test isolation

# Notes
- Verifies correct HTTP status code for successful update
- 200 OK (not 201 Created, since updating existing resource)
- Part of contract testing

# Attachments/Script
- Test script: tests/api/employees/update_response_status_code.py

---
*Last Updated: 2026-08-23 10:00:00*