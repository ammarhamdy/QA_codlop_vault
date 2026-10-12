---
tc_id: TC-API-DASH-EMP-SEARCH-014
title: Expired Authentication Token
priority: Critical
status:
type: Functional
linked_requirement: REQ-DASH-EMP-SEARCH-014
tags:
  - test-case
  - api
  - dashboard
  - employees
  - search
  - authentication
  - negative
  - security
  - token-expiry
---

# Test Data
| Field | Value |
| ----- | ----- |
| key | employee-10 |
| pagination | on |
| limit | 100 |
| page | 1 |
| Authorization | Bearer <expired_token> |

# Preconditions
- Previously valid authentication token that has expired (past its TTL)
- Token was valid but expiration time has passed
- API endpoint is accessible and operational

# Steps
1. Prepare GET request to `/api/dashboard/employees/search` with query parameters: `key=employee-10`, `pagination=on`, `limit=100`, `page=1`
2. Set Authorization header with expired Bearer token
3. Set Accept header to `*/*`
4. Execute the request
5. Capture response status code, headers, and body
6. Validate that expired token is rejected

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
- **Security Assertions:** Expired token is rejected; user must re-authenticate; no data access with stale credentials

# Notes
- Validates token expiration enforcement
- Same error message as other 401 cases for consistency
- Tests automatic token refresh is not bypassing expiration

# Attachments/Script
```bash
curl --location --request GET 'https://seyanty.info/api/dashboard/employees/search?key=employee-10&pagination=on&limit=100&page=1' \
--header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
--header 'Authorization: Bearer <expired-token>' \
--header 'Accept: */*' \
--header 'Host: seyanty.info' \
--header 'Connection: keep-alive'
```

---
*Last Updated: 2026-08-23 10:00:00*