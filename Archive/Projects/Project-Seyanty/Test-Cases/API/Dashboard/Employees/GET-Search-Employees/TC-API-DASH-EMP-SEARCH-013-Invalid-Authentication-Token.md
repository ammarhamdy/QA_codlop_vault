---
tc_id: TC-API-DASH-EMP-SEARCH-013
title: Invalid Authentication Token
priority: Critical
status:
  - Ready
type: Functional
linked_requirement: REQ-DASH-EMP-SEARCH-013
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
| Authorization | Bearer invalid-token-xyz123 |

# Preconditions
- Invalid/non-existent authentication token is used
- Token format is valid (Bearer <string>) but token itself is not recognized
- API endpoint is accessible and operational

# Steps
1. Prepare GET request to `/api/dashboard/employees/search` with query parameters: `key=employee-10`, `pagination=on`, `limit=100`, `page=1`
2. Set Authorization header with invalid Bearer token: `Bearer invalid-token-xyz123`
3. Set Accept header to `*/*`
4. Execute the request
5. Capture response status code, headers, and body
6. Validate that invalid token is rejected

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
- **Security Assertions:** Invalid token is rejected; same error message as missing authentication; no data leakage

# Notes
- Validates token validation mechanism
- API returns same Arabic error message for both missing and invalid tokens
- Prevents token enumeration attacks by using generic error message

# Attachments/Script
```bash
curl --location --request GET 'https://seyanty.info/api/dashboard/employees/search?key=employee-10&pagination=on&limit=100&page=1' \
--header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
--header 'Authorization: Bearer invalid-token-xyz123' \
--header 'Accept: */*' \
--header 'Host: seyanty.info' \
--header 'Connection: keep-alive'
```

---
*Last Updated: 2026-08-23 10:00:00*