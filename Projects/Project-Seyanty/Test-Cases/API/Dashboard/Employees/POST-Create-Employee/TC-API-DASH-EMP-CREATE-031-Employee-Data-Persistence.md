---
tc_id: TC-API-DASH-EMP-CREATE-031
title: Employee Data Persistence
priority: High
status:
type: Functional
linked_requirement: REQ-DASH-EMP-025
tags:
  - test-case
  - api
  - dashboard
  - employees
  - create
  - positive
  - data-persistence
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
4. Capture response and extract employee ID
5. Wait 5 seconds
6. Query database for employee record by ID
7. Send GET request to retrieve employee (if endpoint exists)
8. Verify data persists across requests

# Expected Result
- **HTTP Status Code:** 200 OK (initial creation)
- **Persistence Assertions:**
  - Employee record exists in database after creation
  - Employee record exists in database after 5 seconds
  - Employee record exists in database after server restart (if testable)
  - GET request returns same data (if endpoint exists)
  - Photo file exists in storage and is accessible
  - No data loss or corruption

# Notes
- Verifies data persistence in database and file storage
- Confirms transaction commitment
- Photo file should persist in storage/employees directory

# Attachments/Script
```bash
# Step 1-3: Create employee
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

# Step 5-6: Verify persistence (after delay)
# SELECT * FROM employees WHERE id = <returned_id>;

# Step 7: Verify via GET (if available)
curl --location --request GET 'https://seyanty.info/api/dashboard/employees/<id>' \
--header 'Authorization: Bearer <valid-token>'
```

---
*Last Updated: 2026-08-23 10:00:00*