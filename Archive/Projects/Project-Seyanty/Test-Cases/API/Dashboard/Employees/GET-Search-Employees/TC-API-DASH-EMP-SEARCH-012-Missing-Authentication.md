---
tc_id: TC-API-DASH-EMP-SEARCH-012
title: Missing Authentication
priority: Critical
status:
  - Ready
type: Functional
linked_requirement: REQ-DASH-EMP-SEARCH-012
tags:
  - test-case
  - api
  - dashboard
  - employees
  - search
  - authentication
  - negative
  - security
run_result: Pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| key | employee-10 |
| pagination | on |
| limit | 100 |
| page | 1 |
| Authorization | (missing) |

# Preconditions
- No Authorization header is provided in the request
- API endpoint is accessible and operational
- Employee records exist in the database

# Steps
1. Prepare GET request to `/api/dashboard/employees/search` with query parameters: `key=employee-10`, `pagination=on`, `limit=100`, `page=1`
2. Do NOT set Authorization header
3. Set Accept header to `*/*`
4. Execute the request
5. Capture response status code, headers, and body
6. Validate that unauthenticated request is rejected

# Expected Result
- **HTTP Status Code:** 401 Unauthorized
- **Response Headers:** Content-Type: application/json
- **Response Body:**
```json
{
    "status": "error",
    "code": 401,
    "message": "لابد من تسجيل الدخول أولا",
    "data": null
}
```
- **Security Assertions:** Request without authentication is denied; Arabic error message "لابد من تسجيل الدخول أولا" (You must log in first) is returned

# Notes
- Critical security test - validates authentication is required
- Error message is in Arabic as per API specification
- No employee data should be exposed without authentication

# Attachments/Script
```bash
curl --location --request GET 'https://seyanty.info/api/dashboard/employees/search?key=employee-10&pagination=on&limit=100&page=1' \
--header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
--header 'Accept: */*' \
--header 'Host: seyanty.info' \
--header 'Connection: keep-alive'
```

---
*Last Updated: 2026-08-23 10:00:00*