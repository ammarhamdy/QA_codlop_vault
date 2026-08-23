---
tc_id: TC-API-DASH-EMP-CREATE-019
title: Invalid Profile Photo
priority: Medium
status:
type: Functional
linked_requirement: REQ-DASH-EMP-013
tags:
  - test-case
  - api
  - dashboard
  - employees
  - create
  - negative
  - file-upload
  - validation
---

# Test Data
| Field | Value |
| ----- | ----- |
| name | employee-10 |
| email | employee-10@mail.com |
| password | Admin#123 |
| phone | 0500000110 |
| job_title | eng |
| overview | Test overview |
| photo | /home/am/Pictures/profile/male/invalid-file.txt |

# Preconditions
- Valid authentication token (Bearer token) available for admin user
- Database is in clean state
- API server is running and accessible at https://seyanty.info
- Invalid test file exists (non-image format: .txt, .pdf, .exe, etc.)

# Steps
1. Prepare multipart/form-data request with invalid profile photo (non-image file)
2. Set Authorization header with valid Bearer token
3. Send POST request to https://seyanty.info/api/dashboard/employees
4. Capture response status code, headers, and body

# Expected Result
- **HTTP Status Code:** 422 Unprocessable Entity (or 400 Bad Request)
- **Response Headers:** Content-Type: application/json
- **Response Body:**
```json
{
    "status": "error",
    "code": 422,
    "message": "ملف الصورة غير صحيح",
    "data": {
        "photo": ["يجب أن يكون الملف صورة بصيغة: jpeg, png, jpg, gif, webp."]
    }
}
```
- **Database Assertions:** No employee record created

# Notes
- File type validation should check MIME type and extension
- Test with various invalid formats: .txt, .pdf, .exe, .zip, etc.
- Error message is in Arabic as per API localization

# Attachments/Script
```bash
curl --location --request POST 'https://seyanty.info/api/dashboard/employees' \
--header 'Authorization: Bearer <valid-token>' \
--header 'Accept: */*' \
--header 'Content-Type: multipart/form-data' \
--form 'name="employee-10"' \
--form 'email="employee-10@mail.com"' \
--form 'password="Admin#123"' \
--form 'phone="0500000110"' \
--form 'photo=@"/home/am/Pictures/profile/male/invalid-file.txt"' \
--form 'job_title="eng"' \
--form 'overview="Test overview"'
```

---
*Last Updated: 2026-08-23 10:00:00*