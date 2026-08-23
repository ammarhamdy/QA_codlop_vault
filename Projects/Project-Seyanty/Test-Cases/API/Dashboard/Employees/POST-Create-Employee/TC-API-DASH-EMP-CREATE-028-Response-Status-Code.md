---
tc_id: TC-API-DASH-EMP-CREATE-028
title: Response Status Code
priority: High
status:
type: Functional
linked_requirement: REQ-DASH-EMP-022
tags:
  - test-case
  - api
  - dashboard
  - employees
  - create
  - positive
  - response-validation
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
4. Capture response status code
5. Verify status code matches expected success code

# Expected Result
- **HTTP Status Code:** 200 OK
- **Response Headers:** Content-Type: application/json
- **Response Time:** < 2000ms (performance baseline)
- **Database Assertions:** Employee record created successfully

# Notes
- Verifies successful creation returns 200 (not 201 Created)
- Some APIs return 201 for creation, but this API returns 200
- Response time baseline for performance monitoring

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
--form 'photo=@"/home/am/Pictures/profile/male/79ad7b7a-99da-4e20-962d-1e9fc405312b.jpeg"' \
--form 'job_title="eng"' \
--form 'overview="Test overview"' \
--write-out 'HTTP Status: %{http_code}\nResponse Time: %{time_total}s\n'
```

---
*Last Updated: 2026-08-23 10:00:00*