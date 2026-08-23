---
tc_id: TC-API-DASH-EMP-CREATE-030
title: Created Employee Data Accuracy
priority: High
status:
type: Functional
linked_requirement: REQ-DASH-EMP-024
tags:
  - test-case
  - api
  - dashboard
  - employees
  - create
  - positive
  - data-integrity
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
| photo | /home/am/Pictures/profile/male/79ad7b7a-99da-4e20-962d-1e9fc405312b.jpeg |

# Preconditions
- Valid authentication token (Bearer token) available for admin user
- Database is in clean state
- API server is running and accessible at https://seyanty.info

# Steps
1. Prepare multipart/form-data request with all valid employee fields
2. Set Authorization header with valid Bearer token
3. Send POST request to https://seyanty.info/api/dashboard/employees
4. Capture response body and extract employee ID
5. Query database directly for created employee record
6. Compare API response data with database record

# Expected Result
- **HTTP Status Code:** 200 OK
- **Data Accuracy Assertions:**
  - Response name == Database name
  - Response email == Database email
  - Response phone == Database phone
  - Response job_title == Database job_title
  - Response overview == Database overview
  - Response status == Database status ("active")
  - Response is_blocked == Database is_blocked ("active")
  - Response orders_count == Database orders_count (null)
  - Response photo URL accessible and points to correct storage path
  - Password in database is HASHED (bcrypt/argon2), NOT plain text
  - Created timestamp exists in database
  - Updated timestamp exists in database

# Notes
- Verifies data integrity between API response and database
- Password must never be stored in plain text
- Photo URL should be accessible via HTTP GET
- All string fields should match exactly (case-sensitive)

# Attachments/Script
```bash
# API Request
curl --location --request POST 'https://seyanty.info/api/dashboard/employees' \
--header 'Authorization: Bearer <valid-token>' \
--header 'Accept: */*' \
--header 'Content-Type: multipart/form-data' \
--form 'name="employee-10"' \
--form 'email="employee-10@mail.com"' \
--form 'password="Admin#123"' \
--form 'phone="0500000110"' \
--form 'photo=@"/home/am/Pictures/profile/male/79ad7b7a-99da-4e20-962d-1e9fc405312b.jpeg"' \
--form 'job_title="eng"' \
--form 'overview="Test overview"'

# Database Verification Query (example)
# SELECT * FROM employees WHERE email = 'employee-10@mail.com';
# Verify password column contains hash, not plain text
```

---
*Last Updated: 2026-08-23 10:00:00*