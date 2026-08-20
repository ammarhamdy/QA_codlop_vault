---
tc_id: TC-API-DASH-ADMIN-GET-005
title: Get all admins with an expired session or token
priority:
  - High
status:
  - completed
type:
  - API
linked_requirement: REQ-API-DASH-ADMIN-GET
tags:
  - test-case
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `GET https://seyanty.info/api/dashboard/admins` |
| Content-Type | `application/json` |
| Authorization | `Bearer <expired_token>` |
| Query Parameters | `pagination=on&page=1&limit=10` |

# Preconditions
- The admin's session has expired or the token has passed its expiry time.
- An expired/revoked token is available for the test.

# Steps
1. Send a `GET` request to `https://seyanty.info/api/dashboard/admins?pagination=on&page=1&limit=10`.
2. Set header `Authorization: Bearer <expired_token>`.
3. Set header `Content-Type: application/json`.
4. Send the request and capture the response.

# Expected Result
- The API returns HTTP status code `401 Unauthorized`.
- Response body:
```json
{
    "status": "error",
    "code": 401,
    "message": "لابد من تسجيل الدخول أولا",
    "data": null
}
```
- No admin data is returned.

# Notes
- Exact error message may vary by backend; focus on the HTTP status code.

# Attachments
```sh
#!/usr/bin/env bash

# Test Case: TC-API-DASH-AUTH-LOGOUT-001 - Successful Logout
TITLE="TC-API-DASH-AUTH-LOGOUT-001: Successful Logout"
echo "=================================================="
echo "Running: $TITLE"
echo "=================================================="

# 1. Login to get a valid token
LOGIN_RES=$(curl --silent --location --request POST 'https://seyanty.info/api/dashboard/login' \
  --header 'Accept: application/json' \
  --header 'Content-Type: application/json' \
  --data '{
      "email_or_name": "admin-1@mail.com",
      "password": "Admin#123"
  }')

TOKEN=$(echo "$LOGIN_RES" | jq -r '.data.token // .token // .access_token // empty')

# 2. Execute Logout Request
RESPONSE=$(curl --silent --write-out "\nHTTP_STATUS:%{http_code}" --location --request POST 'https://seyanty.info/api/dashboard/logout' \
  --header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
  --header 'Accept: application/json' \
  --header 'Host: seyanty.info' \
  --header 'Connection: keep-alive' \
  --header "Authorization: Bearer $TOKEN")

HTTP_BODY=$(echo "$RESPONSE" | sed -e '$d')
HTTP_STATUS=$(echo "$RESPONSE" | tail -n1 | sed -e 's/HTTP_STATUS://')

RESPONSE=$(curl --silent --write-out "\nHTTP_STATUS:%{http_code}" --location --request GET 'https://seyanty.info/api/dashboard/admins?pagination=on&page=1&limit=1' \
--header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
--header "Authorization: Bearer $TOKEN" \
--header 'Accept: */*' \
--header 'Host: seyanty.info' \
--header 'Connection: keep-alive')

echo "Result:"
echo "Status Code: $HTTP_STATUS"
echo "Response Body:"
echo "$HTTP_BODY" | jq .
echo "=================================================="
```