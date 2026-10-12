---
tc_id: TC-API-DASH-EMP-UPDATE-001
title: Update Employee With Valid Data
module: Dashboard - Employees
endpoint: /api/dashboard/employees/:id
method: POST
severity: Critical
priority: High
type: Functional
author: QA Automation Engineer
status:
  - Ready
linked_requirement: REQ-EMP-001
tags:
  - api
  - employee
  - update
  - positive
  - smoke
run_result: Pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| employee_id | 63 (existing employee) |
| name | employee-10.1 |
| email | employee-10@mail.com |
| phone | 0500000110 |
| password | (empty string - optional) |
| job_title | engineer |
| photo | valid_image.jpeg |
| _method | put |

# Preconditions
- Valid authentication token (Bearer token) is available
- Employee with ID 63 exists in the database
- Employee data: name="employee-10", email="employee-10@mail.com", phone="0500000110", job_title="developer", status="inactive"
- Test environment is accessible at https://seyanty.info
- Content-Type: multipart/form-data

# Request Details
## Headers
| Header | Value |
| ------ | ----- |
| Authorization | Bearer <valid_token> |
| Accept | */* |
| User-Agent | Apidog/1.0.0 (https://apidog.com) |
| Host | seyanty.info |
| Connection | keep-alive |
| Content-Type | multipart/form-data; boundary=--------------------------050529032150349923523826 |

## Path Parameters
| Parameter | Value |
| --------- | ----- |
| id | 63 |

## Form Data Payload
| Field     | Value                        | Type |
| --------- | ---------------------------- | ---- |
| _method   | put                          | text |
| name      | employee-10.1                | text |
| email     | employee-10@mail.com         | text |
| phone     | 0500000110                   | text |
| password  |                              | text |
| job_title | engineer                     | text |
| photo     | @"/path/to/valid_image.jpeg" | file |

## cURL Command
```bash
curl --location --request POST 'https://seyanty.info/api/dashboard/employees/63' \
--header 'Authorization: Bearer <valid_token>' \
--header 'Accept: */*' \
--header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
--header 'Host: seyanty.info' \
--header 'Connection: keep-alive' \
--form '_method="put"' \
--form 'name="employee-10.1"' \
--form 'email="employee-10@mail.com"' \
--form 'phone="0500000110"' \
--form 'password=""' \
--form 'job_title="engineer"' \
--form 'photo=@"/path/to/valid_image.jpeg"'
```

# Steps
1. Prepare valid authentication token
2. Verify employee with ID 63 exists via GET /api/dashboard/employees/63
3. Prepare multipart/form-data payload with all valid fields
4. Send POST request to /api/dashboard/employees/63 with _method=put
5. Capture response status code, headers, and body
6. Verify response matches expected success structure
7. Verify database record is updated with new values

# Expected Result
## HTTP Response
- **Status Code**: 200 OK
- **Content-Type**: application/json

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
        "photo": "https://seyanty.info/storage/employees/<generated_filename>.jpg",
        "job_title": "engineer",
        "overview": null,
        "status": "inactive",
        "is_blocked": "active",
        "orders_count": null
    }
}
```

## Database Assertions
- Employee record with ID 63 has name = "employee-10.1"
- Employee record with ID 63 has email = "employee-10@mail.com"
- Employee record with ID 63 has phone = "0500000110"
- Employee record with ID 63 has job_title = "engineer"
- Employee record with ID 63 has photo URL updated to new storage path
- Employee status remains "inactive"
- Employee is_blocked remains "active"

# Post-conditions / Cleanup
- No cleanup required (valid update operation)
- Optionally revert employee data to original state for test isolation

# Notes
- This is a smoke test covering the happy path
- Photo upload generates a new filename in storage
- The _method=put parameter is required for Laravel's method spoofing
- Arabic success message: "تم تعديل البيانات بنجاح" (Data updated successfully)

# Attachments/Script
- Test script: tests/api/employees/update_employee_valid_data.py
- Postman collection: Employee_Update_Positive.postman_collection.json

---
*Last Updated: 2026-08-23 10:00:00*