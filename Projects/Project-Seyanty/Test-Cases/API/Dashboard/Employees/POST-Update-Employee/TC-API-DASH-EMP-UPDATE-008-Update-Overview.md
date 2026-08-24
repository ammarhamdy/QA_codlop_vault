---
tc_id: TC-API-DASH-EMP-UPDATE-008
title: Update Employee Overview
module: Dashboard - Employees
endpoint: /api/dashboard/employees/:id
method: POST
severity: Medium
priority: Medium
type: Functional
author: QA Automation Engineer
status:
  - Ready
linked_requirement: REQ-EMP-008
tags:
  - api
  - employee
  - update
  - overview
  - positive
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
| overview | Experienced software engineer with 5+ years in full-stack development. |

# Preconditions
- Valid authentication token (Bearer token) is available
- Employee with ID 63 exists in the database
- Current overview: null
- Overview field accepts long text/markdown
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
| overview | Experienced software engineer with 5+ years in full-stack development. | text |

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
--form 'overview="Experienced software engineer with 5+ years in full-stack development."'
```

# Steps
1. Prepare valid authentication token
2. Verify employee with ID 63 exists and note current overview (null)
3. Send POST request with overview field populated
4. Capture response
5. Verify overview is updated in response
6. Verify other fields remain unchanged

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
        "job_title": "engineer",
        "overview": "Experienced software engineer with 5+ years in full-stack development.",
        "status": "inactive",
        "is_blocked": "active",
        "orders_count": null
    }
}
```

## Database Assertions
- Employee overview updated to provided text
- Name, email, phone, job_title remain unchanged
- Photo URL remains unchanged

# Post-conditions / Cleanup
- Revert overview to null for test isolation

# Notes
- Overview field is optional (nullable)
- Tests updating a previously null field
- Validates long text handling

# Attachments/Script
- Test script: tests/api/employees/update_employee_overview.py

---
*Last Updated: 2026-08-23 10:00:00*