---
tc_id: TC-API-EMP-AUTH-LOGOUT-004
title: Invalid Authentication Token
priority:
  - High
status:
  - completed
type:
  - API
linked_requirement: REQ-EMP-AUTH-LOGOUT-002
tags:
  - test-case
  - api
  - employee
  - auth
  - logout
severity: Major
module: Employee - Auth - Logout
endpoint: https://seyanty.info/api/employee/logout
method: POST
author: ammar
run_result: pass
---

# Description & Objective
Verify logout rejects syntactically valid but server-unknown JWT.

> **Endpoint:** `POST https://seyanty.info/api/employee/logout` (spec lists `GET` but sample is `POST` – `POST` is authoritative)
> **Content-Type:** `application/json` | **Auth:** `Bearer <valid_token>` (JWT from `POST /api/employee/login`)
> **Sample:** `curl --location --request POST 'https://seyanty.info/api/employee/logout' --header 'Authorization: Bearer <valid-token>' --header 'Accept: */*'`

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `POST https://seyanty.info/api/employee/logout` |
| Authorization | `Bearer eyJ0eXAi...invalidSignature` |

# Preconditions
- No valid session for this token.

# Request Details
- **Method & URL:** `POST https://seyanty.info/api/employee/logout`
- **Headers:**
  ```http
  User-Agent: Apidog/1.0.0 (https://apidog.com)
  Authorization: Bearer <valid_token>
  Accept: */*
  Host: seyanty.info
  Connection: keep-alive
  Content-Type: application/json
  ```
- **Query/Path Params:** None.
- **Payload:** None (logout has no body).
- **Notes:** Use JWT with correct structure but invalid signature sub=9999.
- **Complete executable cURL for this scenario:**
  ```bash
curl --silent --write-out "\nHTTP_STATUS:%{http_code}" --location --request POST 'https://seyanty.info/api/employee/logout' \
  --header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
  --header 'Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL3NleWFudHkuaW5mby9hcGkvZW1wbG95ZWUvbG9naW4iLCJpYXQiOjE3ODcxMjM2MDEsImV4cCI6MTc4ODQyMzIwMSwibmJmIjoxNzg3MTIzNjAxLCJqdGkiOiJpbnZhbGlkVG9rZW4xMjM0NSIsInN1YiI6Ijk5OTkiLCJwcnYiOiJkZjg4M2RiOTdiZDA1ZWY4ZmY4NTA4MmQ2ODZjNDVlODMyZTU5M2E5In0.invalidSignature12345' \
  --header 'Accept: */*' \
  --header 'Host: seyanty.info'
  ```

# Steps
1. Craft invalid JWT.
2. POST logout with Bearer invalid.
3. Verify 401.

# Expected Result
- HTTP `401`.
- Error `لابد من تسجيل الدخول أولا`.
- No success.

- **Response Headers:** `Content-Type: application/json` must be present.
- **Database Assertion:** Token blacklisted/invalidated server-side; no employee record mutation. Subsequent auth with same token must fail.

# Post-conditions / Cleanup
None.

# Notes
Signature verification.

# Attachments/Script
```bash
#!/usr/bin/env bash
# Test Case: TC-API-EMP-AUTH-LOGOUT-004 - Invalid Authentication Token
# Endpoint: POST https://seyanty.info/api/employee/logout
TITLE="TC-API-EMP-AUTH-LOGOUT-004: Invalid Authentication Token"
echo "=================================================="
echo "Running: $TITLE"
echo "=================================================="

RESPONSE=$(curl --silent --write-out "\nHTTP_STATUS:%{http_code}" --location --request POST 'https://seyanty.info/api/employee/logout' \
  --header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
  --header 'Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL3NleWFudHkuaW5mby9hcGkvZW1wbG95ZWUvbG9naW4iLCJpYXQiOjE3ODcxMjM2MDEsImV4cCI6MTc4ODQyMzIwMSwibmJmIjoxNzg3MTIzNjAxLCJqdGkiOiJpbnZhbGlkVG9rZW4xMjM0NSIsInN1YiI6Ijk5OTkiLCJwcnYiOiJkZjg4M2RiOTdiZDA1ZWY4ZmY4NTA4MmQ2ODZjNDVlODMyZTU5M2E5In0.invalidSignature12345' \
  --header 'Accept: */*' \
  --header 'Host: seyanty.info' 2>&1)
HTTP_BODY=$(echo "$RESPONSE" | grep -o '{.*}' | tail -n1)
# Fallback: last lines
if [ -z "$HTTP_BODY" ]; then HTTP_BODY=$(echo "$RESPONSE" | sed -e '$d' | grep -v "^TOKEN" | tail -n20); fi
HTTP_STATUS=$(echo "$RESPONSE" | grep -o 'HTTP_STATUS:[0-9]*' | tail -n1 | cut -d: -f2)
if [ -z "$HTTP_STATUS" ]; then HTTP_STATUS=$(echo "$RESPONSE" | tail -n1 | sed -e 's/.*HTTP_STATUS://' | tr -d ' \n\r'); fi

echo "Status Code: $HTTP_STATUS"
echo "Response Body:"
echo "$HTTP_BODY" | jq . 2>/dev/null || echo "$HTTP_BODY"
# For multi-token cases, also show tokens
echo "$RESPONSE" | grep "^TOKEN" || true
echo "=================================================="
echo "Assertions:"
echo "- Check HTTP status matches Expected Result"
echo "- Check body: status/code/message/data per spec"
echo "- For logout success, verify data==null and message تم تسجيل الخروج بنجاح"
echo "- For auth failures, verify لابد من تسجيل الدخول أولا"
echo "=================================================="
```

---
*Last Updated: {{date}} {{time}}*
