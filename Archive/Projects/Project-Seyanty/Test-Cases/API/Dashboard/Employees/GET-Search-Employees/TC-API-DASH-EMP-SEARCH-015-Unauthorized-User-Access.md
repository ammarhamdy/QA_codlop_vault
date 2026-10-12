---
tc_id: TC-API-DASH-EMP-SEARCH-015
title: Unauthorized User Access
priority: High
status:
  - Ready
type: Functional
linked_requirement: REQ-DASH-EMP-SEARCH-015
tags:
  - test-case
  - api
  - dashboard
  - employees
  - search
  - authorization
  - negative
  - security
  - rbac
run_result: Pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| key | employee-10 |
| pagination | on |
| limit | 100 |
| page | 1 |
| Authorization | Bearer <valid_token_without_dashboard_permission> |

# Preconditions
- Valid authentication token for a user WITHOUT dashboard/employees access permissions
- User role does not include permission to search employees
- API endpoint is accessible and operational
- Employee records exist in the database

# Steps
1. Prepare GET request to `/api/dashboard/employees/search` with query parameters: `key=employee-10`, `pagination=on`, `limit=100`, `page=1`
2. Set Authorization header with valid token but insufficient permissions
3. Set Accept header to `*/*`
4. Execute the request
5. Capture response status code, headers, and body
6. Validate that unauthorized access is denied

# Expected Result
- **HTTP Status Code:** 403 Forbidden (or 401 Unauthorized based on implementation)
- **Response Headers:** Content-Type: application/json
- **Response Body (403):**
```json
{
    "status": "error",
    "code": 403,
    "message": "Unauthorized access",
    "data": null
}
```
- **Response Body (401 - if no distinction):**
```json
{
    "status": "error",
    "code": 401,
    "message": "لابد من تسجيل الدخول أولا",
    "data": null
}
```
- **Security Assertions:** User without proper role/permission cannot access employee search; principle of least privilege enforced

# Notes
- Tests Role-Based Access Control (RBAC) for dashboard employee search
- May return 403 (Forbidden) if API distinguishes auth vs authorization
- May return 401 if API treats insufficient permissions as authentication failure
- Document actual behavior for security audit

# Attachments/Script
```bash
curl --location --request GET 'https://seyanty.info/api/dashboard/employees/search?key=employee-10&pagination=on&limit=100&page=1' \
--header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
--header 'Authorization: Bearer <valid-token-without-dashboard-permission>' \
--header 'Accept: */*' \
--header 'Host: seyanty.info' \
--header 'Connection: keep-alive'
```

---
*Last Updated: 2026-08-23 10:00:00*