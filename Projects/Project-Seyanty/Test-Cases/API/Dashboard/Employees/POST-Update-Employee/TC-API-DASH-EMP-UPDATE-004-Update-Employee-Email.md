---
tc_id: TC-API-DASH-EMP-UPDATE-004
title: Update Employee Email
module: Dashboard - Employees
endpoint: /api/dashboard/employees/:id
method: POST
severity: High
priority: High
type: Functional
author: QA Automation Engineer
status:
linked_requirement: REQ-EMP-004
tags:
  - api
  - employee
  - update
  - email
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| employee_id | 63 (existing employee) |
| name | employee-10.1 (unchanged) |
| email | new-email@domain.com |
| phone | 0500000110 (unchanged) |
| job_title | engineer (unchanged) |

# Preconditions
- Valid authentication token (Bearer token) is available
- Employee with ID 63 exists in the database
- Current employee email: "employee-10@mail.com"
- New email "new-email@domain.com" is not used by any other employee
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
| email | new-email@domain.com | text |
| phone | 0500000110 | text |
| job_title | engineer | text |

## cURL Command
```bash
curl --location --request POST 'https://seyanty.info/api/dashboard/employees/63' \
--header 'Authorization: Bearer <valid_token>' \
--header 'Accept: */*' \
--form '_method="put"' \
--form 'name="employee-10.1"' \
--form 'email="new-email@domain.com"' \
--form 'phone="0500000110"' \
--form 'job_title="engineer"'
```

# Steps
1. Prepare valid authentication token
2. Verify employee with ID 63 exists and note current email
3. Verify new email is not used by another employee
4. Send POST request with updated email
5. Capture response
6. Verify email is updated in response
7. Verify other fields remain unchanged

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
        "email": "new-email@domain.com",
        "phone": "0500000110",
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
- Employee email updated to "new-email@domain.com"
- Name, phone, job_title remain unchanged
- Photo URL remains unchanged

# Post-conditions / Cleanup
- Revert email to original value for test isolation

# Notes
- Email uniqueness validation enforced
- Partial update test - only email field changed
- Validates email format acceptance

# Attachments/Script
- Test script: tests/api/employees/update_employee_email.py

---
*Last Updated: 2026-08-23 10:00:00*