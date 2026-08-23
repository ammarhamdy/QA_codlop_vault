---
tc_id: TC-API-DASH-EMP-UPDATE-009
title: Update Employee Profile Photo
module: Dashboard - Employees
endpoint: /api/dashboard/employees/:id
method: POST
severity: High
priority: High
type: Functional
author: QA Automation Engineer
status:
linked_requirement: REQ-EMP-009
tags:
  - api
  - employee
  - update
  - photo
  - file-upload
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| employee_id | 63 (existing employee) |
| name | employee-10.1 |
| email | employee-10@mail.com |
| phone | 0500000110 |
| job_title | engineer |
| photo | new_profile.jpeg (valid image file) |

# Preconditions
- Valid authentication token (Bearer token) is available
- Employee with ID 63 exists in the database
- Current photo URL: https://seyanty.info/storage/employees/old_photo.jpg
- New photo file: valid JPEG/PNG, under size limit (e.g., < 5MB)
- Test environment is accessible at https://seyanty.info
- Storage directory writable

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
| photo | @"/path/to/new_profile.jpeg" | file |

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
--form 'photo=@"/path/to/new_profile.jpeg"'
```

# Steps
1. Prepare valid authentication token
2. Verify employee with ID 63 exists and note current photo URL
3. Prepare valid image file (JPEG/PNG, < 5MB)
4. Send POST request with new photo file
5. Capture response
6. Verify photo URL updated in response (new storage path)
7. Verify new photo accessible via returned URL
8. Verify other fields remain unchanged

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
        "photo": "https://seyanty.info/storage/employees/<new_generated_filename>.jpg",
        "job_title": "engineer",
        "overview": null,
        "status": "inactive",
        "is_blocked": "active",
        "orders_count": null
    }
}
```

## Database Assertions
- Employee photo URL updated to new storage path
- New file exists in storage/employees/ directory
- Old photo file may be deleted or retained (implementation dependent)
- Name, email, phone, job_title remain unchanged

## File System Assertions
- New photo file accessible at returned URL
- File is valid image (JPEG/PNG)
- File size within limits

# Post-conditions / Cleanup
- New photo remains (valid update)
- Optionally revert to original photo for test isolation

# Notes
- Photo upload generates unique filename (timestamp/hash based)
- Validates multipart file upload handling
- Tests file storage and URL generation
- Maximum file size and allowed types should be validated separately (TC-018)

# Attachments/Script
- Test script: tests/api/employees/update_employee_photo.py
- Test file: test_data/images/valid_profile.jpeg

---
*Last Updated: 2026-08-23 10:00:00*