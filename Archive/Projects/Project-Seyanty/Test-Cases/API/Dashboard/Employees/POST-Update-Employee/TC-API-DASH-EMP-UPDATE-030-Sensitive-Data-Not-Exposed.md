---
tc_id: TC-API-DASH-EMP-UPDATE-030
title: Sensitive Data Not Exposed in Response
module: Dashboard - Employees
endpoint: /api/dashboard/employees/:id
method: POST
severity: Critical
priority: High
type: Security
author: QA Automation Engineer
status:
  - Ready
linked_requirement: REQ-SEC-005
tags:
  - api
  - employee
  - update
  - security
  - data-exposure
  - privacy
run_result: Pass
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
- Password provided in request to test non-exposure
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
2. Send POST request with password field included
3. Capture full response body
4. Verify password NOT present in response
5. Verify password hash NOT present in response
6. Verify no sensitive fields exposed (password, remember_token, api_token, etc.)

# Expected Result
## HTTP Response
- **Status Code**: 200 OK

## Response Body - Sensitive Field Check
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
        "photo": "https://seyanty.info/storage/employees/<filename>.jpg",
        "job_title": "engineer",
        "overview": null,
        "status": "inactive",
        "is_blocked": "active",
        "orders_count": null
    }
}
```

## Security Assertions
- ❌ "password" field NOT in response
- ❌ "password_hash" field NOT in response
- ❌ "remember_token" field NOT in response
- ❌ "api_token" field NOT in response
- ❌ "email_verified_at" field NOT in response (if sensitive)
- ✅ Only safe fields returned

## Database Verification
- Password stored as bcrypt/argon2 hash
- Hash not exposed via any API endpoint

# Post-conditions / Cleanup
- Password changed - note for subsequent tests
- Revert password for test isolation

# Notes
- Critical security test - prevents credential leakage
- Password should never be returned (even hashed)
- Tests Laravel's $hidden / $guarded model properties
- Applies to all employee endpoints (GET, POST, PUT)

# Attachments/Script
- Test script: tests/api/employees/update_sensitive_data_not_exposed.py

---
*Last Updated: 2026-08-23 10:00:00*