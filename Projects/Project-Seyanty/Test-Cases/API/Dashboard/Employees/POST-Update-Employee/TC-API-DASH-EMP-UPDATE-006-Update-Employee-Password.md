---
tc_id: TC-API-DASH-EMP-UPDATE-006
title: Update Employee Password
module: Dashboard - Employees
endpoint: /api/dashboard/employees/:id
method: POST
severity: High
priority: High
type: Functional
author: QA Automation Engineer
status:
linked_requirement: REQ-EMP-006
tags:
  - api
  - employee
  - update
  - password
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| employee_id | 63 (existing employee) |
| name | employee-10.1 |
| email | employee-10@mail.com |
| phone | 0500000110 |
| password | NewSecurePass123! |
| job_title | engineer |

# Preconditions
- Valid authentication token (Bearer token) is available
- Employee with ID 63 exists in the database
- Current password is hashed in database (not directly verifiable)
- New password meets complexity requirements (min 8 chars, upper, lower, number, special)
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
| password | NewSecurePass123! | text |
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
--form 'password="NewSecurePass123!"' \
--form 'job_title="engineer"'
```

# Steps
1. Prepare valid authentication token
2. Verify employee with ID 63 exists
3. Send POST request with new password
4. Capture response
5. Verify success response
6. Verify password not returned in response (security)
7. Verify login works with new password (optional integration test)

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
        "overview": null,
        "status": "inactive",
        "is_blocked": "active",
        "orders_count": null
    }
}
```

## Security Assertions
- Password field NOT present in response body
- Password is hashed in database (bcrypt/argon2)
- Original password no longer works for authentication

## Database Assertions
- Employee password hash updated
- Other fields remain unchanged

# Post-conditions / Cleanup
- Password changed - note for subsequent tests
- Optionally revert to known password for test isolation

# Notes
- Password is optional field - empty string means no change
- Password should be hashed before storage
- Password must never be returned in API responses
- Tests password update functionality without exposing sensitive data

# Attachments/Script
- Test script: tests/api/employees/update_employee_password.py

---
*Last Updated: 2026-08-23 10:00:00*