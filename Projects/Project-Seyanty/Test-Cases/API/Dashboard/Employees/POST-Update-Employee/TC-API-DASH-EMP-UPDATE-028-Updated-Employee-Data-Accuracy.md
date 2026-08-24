---
tc_id: TC-API-DASH-EMP-UPDATE-028
title: Updated Employee Data Accuracy
module: Dashboard - Employees
endpoint: /api/dashboard/employees/:id
method: POST
severity: Critical
priority: High
type: Functional
author: QA Automation Engineer
status:
  - Ready
linked_requirement: REQ-EMP-028
tags:
  - api
  - employee
  - update
  - data-accuracy
  - verification
run_result: Pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| employee_id | 63 (existing employee) |
| original_name | employee-10 |
| original_email | employee-10@mail.com |
| original_phone | 0500000110 |
| original_job_title | developer |
| updated_name | employee-10.1 |
| updated_email | employee-10@mail.com |
| updated_phone | 0555555555 |
| updated_job_title | engineer |

# Preconditions
- Valid authentication token (Bearer token) is available
- Employee with ID 63 exists with known original data
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
| phone | 0555555555 | text |
| job_title | engineer | text |

## cURL Command
```bash
curl --location --request POST 'https://seyanty.info/api/dashboard/employees/63' \
--header 'Authorization: Bearer <valid_token>' \
--header 'Accept: */*' \
--form '_method="put"' \
--form 'name="employee-10.1"' \
--form 'email="employee-10@mail.com"' \
--form 'phone="0555555555"' \
--form 'job_title="engineer"'
```

# Steps
1. Prepare valid authentication token
2. GET employee 63 to record original data
3. Send POST request with updated data
4. Capture response
5. Verify response data matches request exactly
6. GET employee 63 again to verify database matches response
7. Compare each field: name, email, phone, job_title

# Expected Result
## HTTP Response
- **Status Code**: 200 OK

## Response Body Data Accuracy
| Field | Request Value | Response Value | Match |
| ----- | ------------- | -------------- | ----- |
| id | 63 | 63 | ✓ |
| name | employee-10.1 | employee-10.1 | ✓ |
| email | employee-10@mail.com | employee-10@mail.com | ✓ |
| phone | 0555555555 | 0555555555 | ✓ |
| job_title | engineer | engineer | ✓ |
| photo | (unchanged) | (unchanged URL) | ✓ |
| status | (unchanged) | inactive | ✓ |
| is_blocked | (unchanged) | active | ✓ |

## Database Verification (GET /api/dashboard/employees/63)
- All fields match response exactly
- No extra transformations or truncation
- Timestamps updated (updated_at)

# Post-conditions / Cleanup
- Revert employee data to original values for test isolation

# Notes
- End-to-end data integrity test
- Verifies request → response → database consistency
- Critical for catching serialization/deserialization bugs

# Attachments/Script
- Test script: tests/api/employees/update_data_accuracy.py

---
*Last Updated: 2026-08-23 10:00:00*