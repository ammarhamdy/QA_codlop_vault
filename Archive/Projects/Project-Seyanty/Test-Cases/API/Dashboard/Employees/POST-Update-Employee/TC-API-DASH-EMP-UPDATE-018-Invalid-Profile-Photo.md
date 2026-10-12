---
tc_id: TC-API-DASH-EMP-UPDATE-018
title: Invalid Profile Photo
module: Dashboard - Employees
endpoint: /api/dashboard/employees/:id
method: POST
severity: High
priority: High
type: Functional
author: QA Automation Engineer
status:
  - Ready
linked_requirement: REQ-EMP-018
tags:
  - api
  - employee
  - update
  - validation
  - file-upload
  - photo
  - negative
run_result: Fail
---

# Test Data
| Field | Value |
| ----- | ----- |
| employee_id | 63 (existing employee) |
| name | employee-10.1 |
| email | employee-10@mail.com |
| phone | 0500000110 |
| job_title | engineer |
| photo | invalid_file.exe (non-image) |

# Preconditions
- Valid authentication token (Bearer token) is available
- Employee with ID 63 exists in the database
- Allowed image types: JPEG, PNG, JPG, WebP
- Max file size: 5MB (typical)
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
| photo | @"/path/to/invalid_file.exe" | file |

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
--form 'photo=@"/path/to/invalid_file.exe"'
```

# Steps
1. Prepare valid authentication token
2. Verify employee with ID 63 exists
3. Prepare invalid file (executable, PDF, or oversized image)
4. Send POST request with invalid photo file
5. Capture response
6. Verify validation error for file type/size
6. Verify employee photo unchanged in database
7. Verify no file stored in uploads

# Expected Result
## HTTP Response
- **Status Code**: 422 Unprocessable Entity

## Response Body
```json
{
    "status": "error",
    "code": 422,
    "message": "ملف الصورة غير صالح",
    "errors": {
        "photo": ["يجب أن يكون الملف صورة من نوع: jpeg, png, jpg, webp"]
    }
}
```
OR (for oversized file)
```json
{
    "status": "error",
    "code": 422,
    "message": "حجم الملف يتجاوز الحد المسموح",
    "errors": {
        "photo": ["حجم الملف يجب ألا يتجاوز 5 ميجابايت"]
    }
}
```

## Database Assertions
- Employee 63 photo URL remains unchanged

## File System Assertions
- No new file created in storage/employees/

# Post-conditions / Cleanup
- No cleanup required (upload rejected)

# Notes
- Tests file type validation (MIME type + extension)
- Tests file size validation
- Tests malicious file upload prevention
- Arabic validation messages expected

# Attachments/Script
- Test script: tests/api/employees/update_invalid_photo.py
- Test files: test_data/images/invalid.exe, test_data/images/oversized.jpg

---
*Last Updated: 2026-08-23 10:00:00*