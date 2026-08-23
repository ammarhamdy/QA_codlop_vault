---
tc_id: TC-API-DASH-EMP-UPDATE-003
title: Update Employee Phone
module: Dashboard - Employees
endpoint: /api/dashboard/employees/:id
method: POST
severity: High
priority: High
type: Functional
author: QA Automation Engineer
status:
linked_requirement: REQ-EMP-003
tags:
  - api
  - employee
  - update
  - phone
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| employee_id | 63 (existing employee) |
| name | employee-10.1 (unchanged) |
| email | employee-10@mail.com (unchanged) |
| phone | 0555555555 |
| job_title | engineer (unchanged) |

# Preconditions
- Valid authentication token (Bearer token) is available
- Employee with ID 63 exists in the database
- Current employee phone: "0500000110"
- New phone number follows Saudi format (05XXXXXXXX)
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
2. Verify employee with ID 63 exists and note current phone
3. Send POST request with updated phone number
4. Capture response
5. Verify phone is updated in response
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
        "phone": "0555555555",
        "photo": "https://seyanty.info/storage/employees/<existing_filename>.jpg",
        "job_title": "engineer",
        "overview": null,
        "status": "inactive",
        "is_blocked": "active",
        "orders_count": null
    }
}
```

## Database Assertions
- Employee phone updated to "0555555555"
- Name, email, job_title remain unchanged
- Photo URL remains unchanged

# Post-conditions / Cleanup
- Revert phone to original value for test isolation

# Notes
- Phone format validation: Saudi mobile numbers (05XXXXXXXX)
- Partial update test - only phone field changed
- Validates phone uniqueness if enforced

# Attachments/Script
- Test script: tests/api/employees/update_employee_phone.py

---
*Last Updated: 2026-08-23 10:00:00*