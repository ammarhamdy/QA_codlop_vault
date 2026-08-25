---
tc_id: TC-API-EMP-AUTH-LOGOUT-014
title: Token Invalidated After Logout
priority:
  - High
status:
  - completed
type:
  - API
linked_requirement: REQ-EMP-AUTH-LOGOUT-005
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
Verify token cannot be used again after logout (immediate invalidation).

> **Endpoint:** `POST https://seyanty.info/api/employee/logout` (spec lists `GET` but sample is `POST` – `POST` is authoritative)
> **Content-Type:** `application/json` | **Auth:** `Bearer <valid_token>` (JWT from `POST /api/employee/login`)
> **Sample:** `curl --location --request POST 'https://seyanty.info/api/employee/logout' --header 'Authorization: Bearer <valid-token>' --header 'Accept: */*'`

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `POST https://seyanty.info/api/employee/logout` then `GET https://seyanty.info/api/employee/profile` |
| Authorization | `Bearer <same_token>` before and after |

# Preconditions
- Valid token.

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
- **Notes:** Login → logout → attempt reuse token on protected endpoint.
- **Complete executable cURL for this scenario:**
  ```bash
TOKEN=$(curl --silent --location --request POST 'https://seyanty.info/api/employee/login' \
  --header 'Accept: application/json' \
  --form 'email_or_name="employee-09@mail.com"' \
  --form 'password="Admin#123"' | jq -r '.data.token')
echo "Logging out..."
curl --silent --location --request POST 'https://seyanty.info/api/employee/logout' \
  --header "Authorization: Bearer $TOKEN" \
  --header 'Accept: application/json' \
  --header 'Host: seyanty.info' | jq .
echo "Trying reuse on profile..."
curl --silent --write-out "\nHTTP_STATUS:%{http_code}" --location --request GET 'https://seyanty.info/api/employee/profile' \
  --header "Authorization: Bearer $TOKEN" \
  --header 'Accept: application/json' \
  --header 'Host: seyanty.info'
  ```

# Steps
1. Login and logout.
2. Immediately reuse same TOKEN on GET profile.
3. Assert 401.
4. Optionally try second logout with same token → 401.

# Expected Result
- Logout returns 200.
- Subsequent GET profile with same token returns `401` `لابد من تسجيل الدخول أولا`.
- Second logout with same token returns 401, not 200.

- **Response Headers:** `Content-Type: application/json` must be present.
- **Database Assertion:** Token blacklisted/invalidated server-side; no employee record mutation. Subsequent auth with same token must fail.

# Post-conditions / Cleanup
Login again for cleanup.

# Notes
Critical security – token must be blacklisted.

# Attachments/Script
```bash
#!/usr/bin/env bash
# Test Case: TC-API-EMP-AUTH-LOGOUT-014 - Token Invalidated After Logout
# Endpoint: POST https://seyanty.info/api/employee/logout
TITLE="TC-API-EMP-AUTH-LOGOUT-014: Token Invalidated After Logout"
echo "=================================================="
echo "Running: $TITLE"
echo "=================================================="

RESPONSE=$(TOKEN=$(curl --silent --location --request POST 'https://seyanty.info/api/employee/login' \
  --header 'Accept: application/json' \
  --form 'email_or_name="employee-09@mail.com"' \
  --form 'password="Admin#123"' | jq -r '.data.token')
echo "Logging out..."
curl --silent --location --request POST 'https://seyanty.info/api/employee/logout' \
  --header "Authorization: Bearer $TOKEN" \
  --header 'Accept: application/json' \
  --header 'Host: seyanty.info' | jq .
echo "Trying reuse on profile..."
curl --silent --write-out "\nHTTP_STATUS:%{http_code}" --location --request GET 'https://seyanty.info/api/employee/profile' \
  --header "Authorization: Bearer $TOKEN" \
  --header 'Accept: application/json' \
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
