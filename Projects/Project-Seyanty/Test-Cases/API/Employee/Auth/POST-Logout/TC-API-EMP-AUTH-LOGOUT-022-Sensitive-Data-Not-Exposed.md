---
tc_id: TC-API-EMP-AUTH-LOGOUT-022
title: Sensitive Data Not Exposed
priority:
  - High
status:
type:
  - API
linked_requirement: REQ-EMP-AUTH-LOGOUT-008
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
---

# Description & Objective
Verify logout responses (success & error) do not leak sensitive fields (password, token of others, stack traces).

> **Endpoint:** `POST https://seyanty.info/api/employee/logout` (spec lists `GET` but sample is `POST` – `POST` is authoritative)
> **Content-Type:** `application/json` | **Auth:** `Bearer <valid_token>` (JWT from `POST /api/employee/login`)
> **Sample:** `curl --location --request POST 'https://seyanty.info/api/employee/logout' --header 'Authorization: Bearer <valid-token>' --header 'Accept: */*'`

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `POST https://seyanty.info/api/employee/logout` |
| Allowed keys | `status, code, message, data` |
| Forbidden | `password, hash, secret, token` in data (data should be null) |

# Preconditions
- Valid token for success case; also test error case without token.

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
- **Notes:** Two captures with --include: valid logout and missing auth, scan for forbidden strings.
- **Complete executable cURL for this scenario:**
  ```bash
TOKEN=$(curl --silent --location --request POST 'https://seyanty.info/api/employee/login' \
  --header 'Accept: application/json' \
  --form 'email_or_name="employee-09@mail.com"' \
  --form 'password="Admin#123"' | jq -r '.data.token')
echo "=== Success logout with include ==="
curl --silent --include --location --request POST 'https://seyanty.info/api/employee/logout' \
  --header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
  --header "Authorization: Bearer $TOKEN" \
  --header 'Accept: application/json' \
  --header 'Host: seyanty.info' | tee /tmp/logout_022_success.txt
echo "\n=== Error logout missing auth ==="
curl --silent --include --location --request POST 'https://seyanty.info/api/employee/logout' \
  --header 'Accept: application/json' \
  --header 'Host: seyanty.info' | tee /tmp/logout_022_error.txt
echo "\n--- Check sensitive ---"
grep -i "password" /tmp/logout_022_success.txt && echo "FAIL sensitive leak" || echo "PASS no password"
cat /tmp/logout_022_success.txt | grep -o '{.*}' | jq '.data' 2>/dev/null
  ```

# Steps
1. Valid logout with --include, save output.
2. Error logout without token with --include.
3. Assert no `password` string, no `hash`, data is null.
4. Check keys only allowed.

# Expected Result
- Both responses: `Content-Type: application/json`, no `password` field.
- `data` is `null` in both (success and error).
- No stack trace, no SQL, no token leakage.

- **Response Headers:** `Content-Type: application/json` must be present.
- **Database Assertion:** Token blacklisted/invalidated server-side; no employee record mutation. Subsequent auth with same token must fail.

# Post-conditions / Cleanup
Re-login.

# Notes
Security audit – logout must be minimal.

# Attachments/Script
```bash
#!/usr/bin/env bash
# Test Case: TC-API-EMP-AUTH-LOGOUT-022 - Sensitive Data Not Exposed
# Endpoint: POST https://seyanty.info/api/employee/logout
TITLE="TC-API-EMP-AUTH-LOGOUT-022: Sensitive Data Not Exposed"
echo "=================================================="
echo "Running: $TITLE"
echo "=================================================="

RESPONSE=$(TOKEN=$(curl --silent --location --request POST 'https://seyanty.info/api/employee/login' \
  --header 'Accept: application/json' \
  --form 'email_or_name="employee-09@mail.com"' \
  --form 'password="Admin#123"' | jq -r '.data.token')
echo "=== Success logout with include ==="
curl --silent --include --location --request POST 'https://seyanty.info/api/employee/logout' \
  --header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
  --header "Authorization: Bearer $TOKEN" \
  --header 'Accept: application/json' \
  --header 'Host: seyanty.info' | tee /tmp/logout_022_success.txt
echo "\n=== Error logout missing auth ==="
curl --silent --include --location --request POST 'https://seyanty.info/api/employee/logout' \
  --header 'Accept: application/json' \
  --header 'Host: seyanty.info' | tee /tmp/logout_022_error.txt
echo "\n--- Check sensitive ---"
grep -i "password" /tmp/logout_022_success.txt && echo "FAIL sensitive leak" || echo "PASS no password"
cat /tmp/logout_022_success.txt | grep -o '{.*}' | jq '.data' 2>/dev/null 2>&1)
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
