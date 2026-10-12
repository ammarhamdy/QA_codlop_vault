---
tc_id: TC-API-EMP-AUTH-LOGOUT-021
title: Login Again After Logout
priority:
  - High
status:
  - completed
type:
  - API
linked_requirement: REQ-EMP-AUTH-LOGOUT-007
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
Verify employee can login again after logout and obtain a new usable token.

> **Endpoint:** `POST https://seyanty.info/api/employee/logout` (spec lists `GET` but sample is `POST` – `POST` is authoritative)
> **Content-Type:** `application/json` | **Auth:** `Bearer <valid_token>` (JWT from `POST /api/employee/login`)
> **Sample:** `curl --location --request POST 'https://seyanty.info/api/employee/logout' --header 'Authorization: Bearer <valid-token>' --header 'Accept: */*'`

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `POST https://seyanty.info/api/employee/login` after `POST /logout` |
| Credentials | `employee-09@mail.com` / `Admin#123` |

# Preconditions
- Valid credentials, logout performed.

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
- **Notes:** Sequence: login → logout → login again → profile with new token.
- **Complete executable cURL for this scenario:**
  ```bash
TOKEN1=$(curl --silent --location --request POST 'https://seyanty.info/api/employee/login' \
  --header 'Accept: application/json' \
  --form 'email_or_name="employee-09@mail.com"' \
  --form 'password="Admin#123"' | jq -r '.data.token')
echo "TOKEN1:$TOKEN1"
curl --silent --location --request POST 'https://seyanty.info/api/employee/logout' \
  --header "Authorization: Bearer $TOKEN1" \
  --header 'Accept: application/json' \
  --header 'Host: seyanty.info' > /dev/null
echo "Login again..."
TOKEN2=$(curl --silent --location --request POST 'https://seyanty.info/api/employee/login' \
  --header 'Accept: application/json' \
  --form 'email_or_name="employee-09@mail.com"' \
  --form 'password="Admin#123"' | jq -r '.data.token')
echo "TOKEN2:$TOKEN2"
if [ "$TOKEN1" = "$TOKEN2" ]; then echo "WARN tokens identical"; else echo "Tokens differ (expected)"; fi
echo "Profile with TOKEN2:"
curl --silent --write-out "\nHTTP_STATUS:%{http_code}" --location --request GET 'https://seyanty.info/api/employee/profile' \
  --header "Authorization: Bearer $TOKEN2" \
  --header 'Accept: application/json' \
  --header 'Host: seyanty.info'
  ```

# Steps
1. Login → TOKEN1.
2. Logout TOKEN1.
3. Login again → TOKEN2.
4. Verify TOKEN2 != TOKEN1 (unique).
5. GET profile with TOKEN2 → 200.

# Expected Result
- Second login returns `200` with new token (possibly different string).
- Profile with TOKEN2 succeeds 200.
- Old TOKEN1 remains 401.
- Proves logout does not lock account.

- **Response Headers:** `Content-Type: application/json` must be present.
- **Database Assertion:** Token blacklisted/invalidated server-side; no employee record mutation. Subsequent auth with same token must fail.

# Post-conditions / Cleanup
Logout TOKEN2 to reset; or keep for next tests.

# Notes
Account remains active after logout – only session ended.

# Attachments/Script
```bash
#!/usr/bin/env bash
# Test Case: TC-API-EMP-AUTH-LOGOUT-021 - Login Again After Logout
# Endpoint: POST https://seyanty.info/api/employee/logout
TITLE="TC-API-EMP-AUTH-LOGOUT-021: Login Again After Logout"
echo "=================================================="
echo "Running: $TITLE"
echo "=================================================="

RESPONSE=$(TOKEN1=$(curl --silent --location --request POST 'https://seyanty.info/api/employee/login' \
  --header 'Accept: application/json' \
  --form 'email_or_name="employee-09@mail.com"' \
  --form 'password="Admin#123"' | jq -r '.data.token')
echo "TOKEN1:$TOKEN1"
curl --silent --location --request POST 'https://seyanty.info/api/employee/logout' \
  --header "Authorization: Bearer $TOKEN1" \
  --header 'Accept: application/json' \
  --header 'Host: seyanty.info' > /dev/null
echo "Login again..."
TOKEN2=$(curl --silent --location --request POST 'https://seyanty.info/api/employee/login' \
  --header 'Accept: application/json' \
  --form 'email_or_name="employee-09@mail.com"' \
  --form 'password="Admin#123"' | jq -r '.data.token')
echo "TOKEN2:$TOKEN2"
if [ "$TOKEN1" = "$TOKEN2" ]; then echo "WARN tokens identical"; else echo "Tokens differ (expected)"; fi
echo "Profile with TOKEN2:"
curl --silent --write-out "\nHTTP_STATUS:%{http_code}" --location --request GET 'https://seyanty.info/api/employee/profile' \
  --header "Authorization: Bearer $TOKEN2" \
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
