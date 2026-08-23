---
tc_id: TC-API-DASH-EMP-GET-004
title: Invalid Authentication Token
priority: High
status:
  - completed
type: Functional
linked_requirement: REQ-DASH-EMP-004
tags:
  - test-case
  - api
  - dashboard
  - employees
  - authentication
  - negative
  - security
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | GET https://seyanty.info/api/dashboard/employees |
| Authentication | Bearer <invalid_token> |
| Query Parameters | pagination=on, limit=100, page=1, status= |
| Content-Type | application/json |
| Invalid Token Examples | "invalid-token", "Bearer invalid", "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.invalid.signature", "expired.jwt.token" |

# Preconditions
- API server is running with JWT validation enabled
- Invalid token is available (malformed, tampered, or completely fake)
- Valid token format but invalid signature/content

# Steps
1. Prepare an invalid Bearer token (malformed JWT, wrong signature, or random string)
2. Construct GET request to `/api/dashboard/employees` with standard query parameters
3. Include header: `Authorization: Bearer <invalid_token>`
4. Execute the request
5. Capture response status code and body
6. Verify authentication rejection

# Expected Result
**HTTP Status Code:** 401 Unauthorized

**Response Body:**
```json
{
    "status": "error",
    "code": 401,
    "message": "لابد من تسجيل الدخول أولا",
    "data": null
}
```
OR
```json
{
    "status": "error",
    "code": 404,
    "message": "Not Found",
    "data": null
}
```

**Validation Checks:**
- Response status is "error"
- Response code is 401 (or 404 per API behavior)
- Response message indicates authentication failure
- Data field is null
- No sensitive data or employee information exposed

# Notes
- Tests JWT validation and signature verification
- Both 401 and 404 are acceptable per API specification (404 may be used to prevent endpoint enumeration)
- Token can be: malformed JWT, valid format but invalid signature, completely random string
- Should not return different error messages for different invalid token types (prevents token format enumeration)

# Attachments
- cURL with invalid token examples
- Expected error responses

```shell
#!/usr/bin/env bash

BASE_URL="https://seyanty.info/api/dashboard"

# Test: Invalid Authentication Token
echo "Testing GET employees with invalid token..."
curl --silent --location --request GET "https://seyanty.info/api/dashboard/employees?pagination=on&limit=100&page=1" \
  --header "Authorization: Bearer invalid-token" \
  --header "Accept: application/json" \
  --header "Content-Type: application/json" | jq

```
---

*Last Updated: 2026-08-23*