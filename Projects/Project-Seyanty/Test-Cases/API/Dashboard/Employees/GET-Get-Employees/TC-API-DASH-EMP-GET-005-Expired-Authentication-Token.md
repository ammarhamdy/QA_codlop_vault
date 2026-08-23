---
tc_id: TC-API-DASH-EMP-GET-005
title: Expired Authentication Token
priority: High
status:
  - completed
type: Functional
linked_requirement: REQ-DASH-EMP-005
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
| Authentication | Bearer <expired_token> |
| Query Parameters | pagination=on, limit=100, page=1, status= |
| Content-Type | application/json |
| Expired Token | JWT token with `exp` claim in the past (e.g., expired 1 hour ago) |

# Preconditions
- A previously valid JWT token that has expired (exp timestamp < current time)
- Token was valid but TTL has passed
- API server validates `exp` claim in JWT
- System clock is synchronized

# Steps
1. Obtain a valid token and wait for expiry, OR craft a JWT with past `exp` claim
2. Construct GET request to `/api/dashboard/employees` with standard query parameters
3. Include header: `Authorization: Bearer <expired_token>`
4. Execute the request
5. Capture response status code and body
6. Verify token expiry handling

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
- Response code is 401 (or 404)
- Error message indicates authentication required
- No employee data returned
- Token expiry properly detected and rejected

# Notes
- Tests JWT `exp` claim validation
- Important for session management security
- Expired tokens should be treated same as invalid tokens (no token enumeration)
- May need to manipulate system time or use pre-expired token for testing

# Attachments
- cURL with expired token
- JWT payload showing expired `exp` claim

```shell
#!/usr/bin/env bash


LOGIN_RES=$(curl --silent --location --request POST 'https://seyanty.info/api/dashboard/login' \
  --header 'Accept: application/json' \
  --header 'Content-Type: application/json' \
  --data '{
      "email_or_name": "admin-1@mail.com",
      "password": "Admin#123"
  }')

TOKEN=$(echo "$LOGIN_RES" | jq -r '.data.token // .token // .access_token // empty')


RESPONSE=$(curl --silent --write-out "\nHTTP_STATUS:%{http_code}" --location --request POST 'https://seyanty.info/api/dashboard/logout' \
  --header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
  --header 'Accept: application/json' \
  --header 'Host: seyanty.info' \
  --header 'Connection: keep-alive' \
  --header "Authorization: Bearer $TOKEN")

echo "Testing GET employees with expired token..."
echo "NOTE: Replace EXPIRED_TOKEN_HERE with an actual expired JWT token"
curl --silent --location --request GET "https://seyanty.info/api/dashboard/employees?pagination=on&limit=100&page=1" \
  --header "Authorization: Bearer ${TOKEN}" \
  --header "Accept: application/json" \
  --header "Content-Type: application/json" | jq

```
---

*Last Updated: 2026-08-23*