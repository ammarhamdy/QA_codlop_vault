---
tc_id: TC-API-DASH-EMP-UPDATE-007
title: Update Employee Job Title
module: Dashboard - Employees
endpoint: /api/dashboard/employees/:id
method: POST
severity: Medium
priority: High
type: Functional
author: QA Automation Engineer
status:
linked_requirement: REQ-EMP-007
tags:
  - api
  - employee
  - update
  - job-title
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| employee_id | 63 (existing employee) |
| name | employee-10.1 |
| email | employee-10@mail.com |
| phone | 0500000110 |
| job_title | senior engineer |

# Preconditions
- Valid authentication token (Bearer token) is available
- Employee with ID 63 exists in the database
- Current job_title: "engineer"
- New job_title: "senior engineer" (valid value)
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
| job_title | senior engineer | text |

## cURL Command
```bash
curl --location --request POST 'https://seyanty.info/api/dashboard/employees/63' \
--header 'Authorization: Bearer <valid_token>' \
--header 'Accept: */*' \
--form '_method="put"' \
--form 'name="employee-10.1"' \
--form 'email="employee-10@mail.com"' \
--form 'phone="0500000110"' \
--form 'job_title="senior engineer"'
```

# Steps
1. Prepare valid authentication token
2. Verify employee with ID 63 exists and note current job_title
3. Send POST request with updated job_title
4. Capture response
5. Verify job_title is updated in response
3. Verify other fields remain unchanged

# Expected Result
## HTTP Response
- **Status Code**: 200 OK

## Response Body
```json
{
    "status": "success",
    "code": 200,
    "message": "تم تعديل البيانات بنجاح",
    "data": {
        "id": 63,
        "name": "employee-10.1",
        "email": "employee-10@mail.com",
        "phone": "0500000110",
        "photo": "https://seyanty.info/storage/employees/<existing_filename>.jpg",
        "job_title": "senior engineer",
        "overview": null,
        "status": "inactive",
        "is_blocked": "active",
        "orders_count": null
    }
}
```

## Database Assertions
- Employee job_title updated to "senior engineer"
- Name, email, phone remain unchanged
- Photo URL remains unchanged

# Post-conditions / Cleanup
- Revert job_title to original value for test isolation

# Notes
- Partial update test - only job_title field changed
- Job title is free-text field (no enum validation observed)
- Validates that job_title persists correctly

# Attachments/Script
- Test script: tests/api/employees/update_employee_job_title.py

---
*Last Updated: 2026-08-23 10:00:00*