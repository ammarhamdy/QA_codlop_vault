---
tc_id: TC-API-DASH-EMP-UPDATE-002
title: Update Employee Name
module: Dashboard - Employees
endpoint: /api/dashboard/employees/:id
method: POST
severity: High
priority: High
type: Functional
author: QA Automation Engineer
status:
linked_requirement: REQ-EMP-002
tags:
  - api
  - employee
  - update
  - name
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| employee_id | 63 (existing employee) |
| name | Updated Employee Name |
| email | employee-10@mail.com (unchanged) |
| phone | 0500000110 (unchanged) |
| job_title | engineer (unchanged) |

# Preconditions
- Valid authentication token (Bearer token) is available
- Employee with ID 63 exists in the database
- Current employee name: "employee-10"
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
| name | Updated Employee Name | text |
| email | employee-10@mail.com | text |
| phone | 0500000110 | text |
| job_title | engineer | text |

## cURL Command
```bash
curl --location --request POST 'https://seyanty.info/api/dashboard/employees/63' \
--header 'Authorization: Bearer <valid_token>' \
--header 'Accept: */*' \
--form '_method="put"' \
--form 'name="Updated Employee Name"' \
--form 'email="employee-10@mail.com"' \
--form 'phone="0500000110"' \
--form 'job_title="engineer"'
```

# Steps
1. Prepare valid authentication token
2. Verify employee with ID 63 exists and note current name
3. Send POST request with updated name only (other fields remain same)
4. Capture response
5. Verify name is updated in response
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
        "name": "Updated Employee Name",
        "email": "employee-10@mail.com",
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
- Employee name updated to "Updated Employee Name"
- Email, phone, job_title remain unchanged
- Photo URL remains unchanged (no new upload)

# Post-conditions / Cleanup
- Revert name to original value for test isolation

# Notes
- Partial update test - only name field changed
- Validates that unchanged fields persist correctly
- Arabic success message expected

# Attachments/Script
- Test script: tests/api/employees/update_employee_name.py

---
*Last Updated: 2026-08-23 10:00:00*