---
tc_id: TC-API-DASH-EMP-UPDATE-027
title: Response Body Structure Validation
module: Dashboard - Employees
endpoint: /api/dashboard/employees/:id
method: POST
severity: High
priority: High
type: Functional
author: QA Automation Engineer
status:
linked_requirement: REQ-API-005
tags:
  - api
  - employee
  - update
  - response-validation
  - schema
  - contract
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
--form 'job_title="engineer"'
```

# Steps
1. Prepare valid authentication token
2. Send valid POST request to update employee
3. Capture full response body
4. Validate response JSON structure matches expected schema
5. Verify all required fields present with correct types

# Expected Result
## HTTP Response
- **Status Code**: 200 OK

## Response Body Schema
```json
{
    "status": "string (success|error)",
    "code": "integer (HTTP status code)",
    "message": "string (Arabic success/error message)",
    "data": {
        "id": "integer",
        "name": "string",
        "email": "string (email format)",
        "phone": "string",
        "photo": "string (URL)|null",
        "job_title": "string|null",
        "overview": "string|null",
        "status": "string (active|inactive)",
        "is_blocked": "string (active|blocked)",
        "orders_count": "integer|null"
    }
}
```

## Field Validations
| Field | Type | Required | Constraints |
| ----- | ---- | -------- | ----------- |
| status | string | Yes | Enum: success, error |
| code | integer | Yes | Matches HTTP status |
| message | string | Yes | Arabic localized |
| data.id | integer | Yes | Matches requested ID |
| data.name | string | Yes | Non-empty |
| data.email | string | Yes | Valid email format |
| data.phone | string | Yes | Saudi format |
| data.photo | string/null | Yes | Valid URL or null |
| data.job_title | string/null | Yes | - |
| data.overview | string/null | Yes | - |
| data.status | string | Yes | Enum: active, inactive |
| data.is_blocked | string | Yes | Enum: active, blocked |
| data.orders_count | integer/null | Yes | - |

# Post-conditions / Cleanup
- Revert employee data for test isolation

# Notes
- Contract test - validates API response schema
- All fields in data object must be present (no missing keys)
- Nullable fields explicitly null, not omitted
- Arabic message for success: "تم تعديل البيانات بنجاح"

# Attachments/Script
- Test script: tests/api/employees/update_response_body_structure.py
- JSON Schema: schemas/employee_update_response.json

---
*Last Updated: 2026-08-23 10:00:00*