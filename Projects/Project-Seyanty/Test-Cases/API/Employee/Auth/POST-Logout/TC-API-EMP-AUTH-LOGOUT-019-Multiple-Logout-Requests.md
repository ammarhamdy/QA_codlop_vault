---
tc_id: TC-API-EMP-AUTH-LOGOUT-019
title: Multiple Logout Requests
priority:
  - Medium
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
severity: Minor
module: Employee - Auth - Logout
endpoint: https://seyanty.info/api/employee/logout
method: POST
author: ammar
run_result: pass
---

# Description & Objective
Verify multiple sequential logout requests: only first succeeds.

> **Endpoint:** `POST https://seyanty.info/api/employee/logout` (spec lists `GET` but sample is `POST` – `POST` is authoritative)
> **Content-Type:** `application/json` | **Auth:** `Bearer <valid_token>` (JWT from `POST /api/employee/login`)
> **Sample:** `curl --location --request POST 'https://seyanty.info/api/employee/logout' --header 'Authorization: Bearer <valid-token>' --header 'Accept: */*'`

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `POST https://seyanty.info/api/employee/logout` x3 same token |

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
- **Notes:** Login once, then POST logout three times sequentially with same token, capturing each status.
- **Complete executable cURL for this scenario:**
  ```bash
TOKEN=$(curl --silent --location --request POST 'https://seyanty.info/api/employee/login' \
  --header 'Accept: application/json' \
  --form 'email_or_name="employee-09@mail.com"' \
  --form 'password="Admin#123"' | jq -r '.data.token')
for i in 1 2 3; do
  echo "Attempt $i:"
  curl --silent --write-out "\nHTTP_STATUS:%{http_code}\n" --location --request POST 'https://seyanty.info/api/employee/logout' \
    --header "Authorization: Bearer $TOKEN" \
    --header 'Accept: application/json' \
    --header 'Host: seyanty.info' | cat
done
  ```

# Steps
1. Login.
2. Loop 3 POST logouts same token.
3. Assert attempt1=200, attempt2=401, attempt3=401.

# Expected Result
- Attempt1 `200`.
- Attempts2-3 `401`.
- No success after first.

- **Response Headers:** `Content-Type: application/json` must be present.
- **Database Assertion:** Token blacklisted/invalidated server-side; no employee record mutation. Subsequent auth with same token must fail.

# Post-conditions / Cleanup
Re-login.

# Notes
Stress on token invalidation consistency.

# Attachments/Script
```bash
#!/usr/bin/env bash
# Test Case: TC-API-EMP-AUTH-LOGOUT-019 - Multiple Logout Requests
# Endpoint: POST https://seyanty.info/api/employee/logout
TITLE="TC-API-EMP-AUTH-LOGOUT-019: Multiple Logout Requests"
echo "=================================================="
echo "Running: $TITLE"
echo "=================================================="

RESPONSE=$(TOKEN=$(curl --silent --location --request POST 'https://seyanty.info/api/employee/login' \
  --header 'Accept: application/json' \
  --form 'email_or_name="employee-09@mail.com"' \
  --form 'password="Admin#123"' | jq -r '.data.token')
for i in 1 2 3; do
  echo "Attempt $i:"
  curl --silent --write-out "\nHTTP_STATUS:%{http_code}\n" --location --request POST 'https://seyanty.info/api/employee/logout' \
    --header "Authorization: Bearer $TOKEN" \
    --header 'Accept: application/json' \
    --header 'Host: seyanty.info' | cat
done 2>&1)
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
