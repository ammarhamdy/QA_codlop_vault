---
tc_id: TC-API-DASH-EMP-DELETE-021
title: Sensitive Data Not Exposed
priority: High
status:
  - Ready
type: Security
linked_requirement: REQ-DASH-EMP-021
tags:
  - test-case
  - delete-employee
  - sensitive-data
  - data-leakage
  - security
  - api
run_result: Pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| endpoint | DELETE https://seyanty.info/api/dashboard/employees/:id |
| employee_id | Valid existing employee ID (e.g., 123) |
| auth_token | Valid Bearer token for authenticated dashboard user |
| expected_status | 200 |

# Preconditions
- Valid authentication token available for dashboard user
- Employee with ID `123` exists with sensitive fields (salary, national_id, bank_account, password_hash, etc.)
- Employee record contains PII/confidential data

# Steps
1. Prepare DELETE request to `https://seyanty.info/api/dashboard/employees/123` with valid auth
2. Send the DELETE request
3. Capture response headers and body
4. Inspect response for any sensitive data exposure
5. Verify response body only contains specified success fields
6. Verify no sensitive fields in response (salary, national_id, bank details, passwords, tokens, etc.)
7. Verify headers don't leak sensitive info (no tokens in Location, etc.)

# Expected Result
- HTTP Status Code: 200 OK
- Response Headers: Content-Type: application/json (no sensitive headers)
- Response Body ONLY contains:
```json
{
    "status": "success",
    "code": 200,
    "message": "تم حذف الموظف بنجاح",
    "data": []
}
```
- Security Assertions:
  - No employee PII in response (name, email, phone, address, national_id)
  - No salary/compensation data
  - No authentication tokens, password hashes, API keys
  - No bank account details
  - No internal IDs/UUIDs beyond what's in request
  - `data` field is empty array `[]` - no deleted entity representation

# Notes
- Critical security test for data minimization principle
- DELETE responses should not echo deleted entity (unlike some GET/PUT)
- Verifies compliance with data protection regulations (GDPR, local laws)
- Response should be identical regardless of employee data sensitivity

# Attachments/Script
```bash
curl --location --request DELETE 'https://seyanty.info/api/dashboard/employees/123' \
--header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
--header 'Authorization: Bearer <valid-token>' \
--header 'Accept: */*' \
--header 'Host: seyanty.info' \
--header 'Connection: keep-alive' \
--include
```

# Security Checklist
- [ ] Response body contains only: status, code, message, data
- [ ] data is empty array []
- [ ] No employee fields in response
- [ ] No debug/internal fields (timestamp, request_id, version, etc. unless documented)
- [ ] Headers clean (no Set-Cookie with sensitive data, no X-Powered-By, etc.)
- [ ] Response identical for high-privilege vs low-privilege employees

---
*Last Updated: 2026-08-23 10:51*