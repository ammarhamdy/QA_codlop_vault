---
tc_id: TC-API-EMP-AUTH-PROFILE-005
title: Invalid Authentication Token
priority:
  - High
status:
  - completed
type:
  - API
linked_requirement: REQ-EMP-AUTH-PROFILE-002
tags:
  - test-case
  - api
  - employee
  - auth
  - profile
severity: Major
module: Employee - Auth - Profile
endpoint: https://seyanty.info/api/employee/profile
method: GET
author: QA Automation Engineer
run_result: pass
---

# Description & Objective
Verify endpoint rejects a syntactically valid JWT that is not issued by the server (random signature/unknown user).

> **Endpoint:** `GET https://seyanty.info/api/employee/profile`
> **Content-Type:** `application/json` | **Auth:** `Bearer <valid_token>` (JWT from `POST /api/employee/login`)
> **Sample:** `curl --location --request GET 'https://seyanty.info/api/employee/profile' --header 'Authorization: Bearer <valid-token>' --header 'Accept: */*'`

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `GET https://seyanty.info/api/employee/profile` |
| Authorization | `Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL3NleWFudHkuaW5mbyIsInN1YiI6Ijk5OTkiLCJpYXQiOjE3ODcxMjM2MDEsImV4cCI6MTc4ODQyMzIwMSwianRpIjoiaW52YWxpZCJ9.invalidSignature12345` |

# Preconditions
- Endpoint reachable.
- No valid session for this token.

# Request Details
- **Method & URL:** `GET https://seyanty.info/api/employee/profile`
- **Headers:**
  ```http
  User-Agent: Apidog/1.0.0 (https://apidog.com)
  Authorization: Bearer <valid_token>
  Accept: */*  (or application/json)
  Host: seyanty.info
  Connection: keep-alive
  Content-Type: application/json
  ```
- **Query/Path Params:** None.
- **Payload:** None (GET has no body).
- **Notes:** Use a JWT with correct structure but invalid signature and non-existent sub=9999.
- **Complete executable cURL for this scenario:**
  ```bash
curl --silent --write-out "\nHTTP_STATUS:%{http_code}" --location --request GET 'https://seyanty.info/api/employee/profile' \
  --header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
  --header 'Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL3NleWFudHkuaW5mby9hcGkvZW1wbG95ZWUvbG9naW4iLCJpYXQiOjE3ODcxMjM2MDEsImV4cCI6MTc4ODQyMzIwMSwibmJmIjoxNzg3MTIzNjAxLCJqdGkiOiJpbnZhbGlkVG9rZW4xMjM0NSIsInN1YiI6Ijk5OTkiLCJwcnYiOiJkZjg4M2RiOTdiZDA1ZWY4ZmY4NTA4MmQ2ODZjNDVlODMyZTU5M2E5In0.invalidSignature12345' \
  --header 'Accept: */*' \
  --header 'Host: seyanty.info' \
  --header 'Connection: keep-alive'
  ```

# Steps
1. Craft invalid JWT (header.payload with fake signature).
2. Send GET with `Authorization: Bearer <invalid>`
3. Verify 401, no data.

# Expected Result
- HTTP `401`.
- Error body `لابد من تسجيل الدخول أولا`, `data:null`.
- No stack trace.

- **Response Headers:** `Content-Type: application/json` must be present.
- **Database Assertion:** Profile read is non-mutating; no DB write. Data matches `employees` table for authenticated user.

# Post-conditions / Cleanup
None.

# Notes
Validates signature verification.

# Attachments/Script
```bash
#!/usr/bin/env bash
# Test Case: TC-API-EMP-AUTH-PROFILE-005 - Invalid Authentication Token
# Endpoint: GET https://seyanty.info/api/employee/profile
TITLE="TC-API-EMP-AUTH-PROFILE-005: Invalid Authentication Token"
echo "=================================================="
echo "Running: $TITLE"
echo "=================================================="

RESPONSE=$(curl --silent --write-out "\nHTTP_STATUS:%{http_code}" --location --request GET 'https://seyanty.info/api/employee/profile' \
  --header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
  --header 'Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL3NleWFudHkuaW5mby9hcGkvZW1wbG95ZWUvbG9naW4iLCJpYXQiOjE3ODcxMjM2MDEsImV4cCI6MTc4ODQyMzIwMSwibmJmIjoxNzg3MTIzNjAxLCJqdGkiOiJpbnZhbGlkVG9rZW4xMjM0NSIsInN1YiI6Ijk5OTkiLCJwcnYiOiJkZjg4M2RiOTdiZDA1ZWY4ZmY4NTA4MmQ2ODZjNDVlODMyZTU5M2E5In0.invalidSignature12345' \
  --header 'Accept: */*' \
  --header 'Host: seyanty.info' \
  --header 'Connection: keep-alive' 2>&1)
HTTP_BODY=$(echo "$RESPONSE" | sed -e '$d' | sed -e '/^TOKEN:/d' | tail -n 50)
HTTP_STATUS=$(echo "$RESPONSE" | tail -n1 | sed -e 's/.*HTTP_STATUS://' | tr -d ' \n\r')

# If status not parsed (multi-cURL cases), try alternative extraction
if ! echo "$HTTP_STATUS" | grep -qE '^[0-9]{3}$'; then
  HTTP_STATUS=$(echo "$RESPONSE" | grep -o 'HTTP_STATUS:[0-9]*' | tail -n1 | cut -d: -f2)
fi

echo "Status Code: $HTTP_STATUS"
echo "Response Body:"
echo "$HTTP_BODY" | jq . 2>/dev/null || echo "$HTTP_BODY"
echo "=================================================="
echo "Assertions:"
echo "- Check HTTP status matches Expected Result"
echo "- Check body schema: status/code/message/data"
echo "- Check security: no password/sensitive leak"
echo "=================================================="
```

---
*Last Updated: {{date}} {{time}}*
