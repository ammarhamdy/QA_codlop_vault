---
tc_id: TC-API-DASH-EMP-CREATE-032
title: Sensitive Data Not Exposed
priority: High
status:
type: Functional
linked_requirement: REQ-DASH-EMP-026
tags:
  - test-case
  - api
  - dashboard
  - employees
  - create
  - security
  - data-protection
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
1. Prepare multipart/form-data request with all valid employee fields including password
2. Set Authorization header with valid Bearer token
3. Send POST request to https://seyanty.info/api/dashboard/employees
4. Capture response body
5. Verify password is NOT present in response
6. Query database and verify password is hashed
7. Verify no sensitive data in logs (if accessible)

# Expected Result
- **HTTP Status Code:** 200 OK
- **Security Assertions:**
  - Response body does NOT contain "password" field
  - Response body does NOT contain "password_hash" field
  - Response body does NOT contain plain text password "Admin#123"
  - Database password column contains bcrypt/argon2 hash (starts with $2a$, $2b$, $2y$, or $argon2)
  - Password hash is not reversible to plain text
  - No sensitive data in API response headers
  - No sensitive data in error responses (if any)

# Notes
- Critical security test - passwords must never be exposed
- Verifies proper password hashing implementation
- Applies to both success and error responses
- Compliance with OWASP authentication best practices

# Attachments/Script
```bash
# Create employee
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

# Verify response doesn't contain password
# grep -i "password\|admin#123" response.json
# Should return no matches

# Database verification
# SELECT password FROM employees WHERE email = 'employee-10@mail.com';
# Verify hash format: $2b$10$... or $argon2id$v=19$...
```

---
*Last Updated: 2026-08-23 10:00:00*