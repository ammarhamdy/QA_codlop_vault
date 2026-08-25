---
tc_id: TC-API-EMP-AUTH-LOGOUT-001
title: Logout With Valid Token
priority:
  - High
status:
  - completed
type:
  - API
linked_requirement: REQ-EMP-AUTH-LOGOUT-001
tags:
  - test-case
  - api
  - employee
  - auth
  - logout
severity: Critical
module: Employee - Auth - Logout
endpoint: https://seyanty.info/api/employee/logout
method: POST
author: ammar
run_result: pass
---

# Description & Objective
Validate successful employee logout using a valid Bearer token via POST /api/employee/logout.

> **Endpoint:** `POST https://seyanty.info/api/employee/logout` (spec lists `GET` but sample is `POST` – `POST` is authoritative)
> **Content-Type:** `application/json` | **Auth:** `Bearer <valid_token>` (JWT from `POST /api/employee/login`)
> **Sample:** `curl --location --request POST 'https://seyanty.info/api/employee/logout' --header 'Authorization: Bearer <valid-token>' --header 'Accept: */*'`

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `POST https://seyanty.info/api/employee/logout` |
| Method | `POST` |
| Content-Type | `application/json` |
| Authorization | `Bearer <valid_token>` (from login) |
| Accept | `*/*` or `application/json` |

# Preconditions
- Employee `employee-09@mail.com` with password `Admin#123` exists.
- Login `POST /api/employee/login` reachable to obtain valid JWT.
- Logout `POST /api/employee/logout` reachable and requires `Authorization: Bearer <token>`.

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
- **Notes:** Headers: `Authorization: Bearer <valid_token>`, `Accept: */*`, `User-Agent: Apidog/1.0.0`. No body. Endpoint is POST despite spec label GET.
- **Complete executable cURL for this scenario:**
  ```bash
TOKEN=$(curl --silent --location --request POST 'https://seyanty.info/api/employee/login' \
  --header 'Accept: application/json' \
  --header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
  --form 'email_or_name="employee-09@mail.com"' \
  --form 'password="Admin#123"' | jq -r '.data.token')
echo "TOKEN:$TOKEN"
curl --silent --write-out "\nHTTP_STATUS:%{http_code}" --location --request POST 'https://seyanty.info/api/employee/logout' \
  --header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
  --header "Authorization: Bearer $TOKEN" \
  --header 'Accept: */*' \
  --header 'Host: seyanty.info' \
  --header 'Connection: keep-alive'
  ```

# Steps
1. Login as `employee-09@mail.com` / `Admin#123` via `POST /api/employee/login` and extract `data.token`.
2. Set `Authorization: Bearer $TOKEN`.
3. Send `POST` to `https://seyanty.info/api/employee/logout` with no body.
4. Capture status and body.
5. Validate success schema and that token is invalidated.

# Expected Result
- HTTP `200 OK`.
- Header `Content-Type: application/json`.
- Body: `{"status":"success","code":200,"message":"تم تسجيل الخروج بنجاح","data":null}` (Arabic message exact).
- `data` is `null`, not object.
- Token is subsequently invalidated (see TC-014).

- **Response Headers:** `Content-Type: application/json` must be present.
- **Database Assertion:** Token blacklisted/invalidated server-side; no employee record mutation. Subsequent auth with same token must fail.

# Post-conditions / Cleanup
Token invalidated; re-login required for further authenticated tests. No DB mutation except token blacklist/invalidation.

# Notes
Primary happy-path. Note spec says GET but actual is POST – POST is authoritative per sample.

# Attachments/Script
```bash
#!/usr/bin/env bash
# Test Case: TC-API-EMP-AUTH-LOGOUT-001 - Logout With Valid Token
# Endpoint: POST https://seyanty.info/api/employee/logout
TITLE="TC-API-EMP-AUTH-LOGOUT-001: Logout With Valid Token"
echo "=================================================="
echo "Running: $TITLE"
echo "=================================================="

RESPONSE=$(TOKEN=$(curl --silent --location --request POST 'https://seyanty.info/api/employee/login' \
  --header 'Accept: application/json' \
  --header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
  --form 'email_or_name="employee-09@mail.com"' \
  --form 'password="Admin#123"' | jq -r '.data.token')
echo "TOKEN:$TOKEN"
curl --silent --write-out "\nHTTP_STATUS:%{http_code}" --location --request POST 'https://seyanty.info/api/employee/logout' \
  --header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
  --header "Authorization: Bearer $TOKEN" \
  --header 'Accept: */*' \
  --header 'Host: seyanty.info' \
  --header 'Connection: keep-alive' 2>&1)
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
