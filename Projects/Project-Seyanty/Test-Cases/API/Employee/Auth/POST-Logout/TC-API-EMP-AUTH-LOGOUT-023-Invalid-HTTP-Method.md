---
tc_id: TC-API-EMP-AUTH-LOGOUT-023
title: Invalid HTTP Method
priority:
  - Medium
status:
  - completed
type:
  - API
linked_requirement: REQ-EMP-AUTH-LOGOUT-009
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
Verify logout endpoint rejects invalid HTTP methods (GET, PUT, DELETE) – only POST is allowed. Note spec says GET but sample is POST.

> **Endpoint:** `POST https://seyanty.info/api/employee/logout` (spec lists `GET` but sample is `POST` – `POST` is authoritative)
> **Content-Type:** `application/json` | **Auth:** `Bearer <valid_token>` (JWT from `POST /api/employee/login`)
> **Sample:** `curl --location --request POST 'https://seyanty.info/api/employee/logout' --header 'Authorization: Bearer <valid-token>' --header 'Accept: */*'`

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `GET https://seyanty.info/api/employee/logout` (invalid) vs `POST` valid |
| Method | `GET` (and PUT, DELETE) |
| Authorization | `Bearer <valid_token>` |

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
- **Notes:** Send GET/PUT/DELETE to same URL with Bearer, expect 405.
- **Complete executable cURL for this scenario:**
  ```bash
TOKEN=$(curl --silent --location --request POST 'https://seyanty.info/api/employee/login' \
  --header 'Accept: application/json' \
  --form 'email_or_name="employee-09@mail.com"' \
  --form 'password="Admin#123"' | jq -r '.data.token')
echo "=== GET should be 405 ==="
curl --silent --write-out "\nHTTP_STATUS:%{http_code}" --location --request GET 'https://seyanty.info/api/employee/logout' \
  --header "Authorization: Bearer $TOKEN" \
  --header 'Accept: application/json' \
  --header 'Host: seyanty.info'
echo "\n=== PUT should be 405 ==="
curl --silent --write-out "\nHTTP_STATUS:%{http_code}" --location --request PUT 'https://seyanty.info/api/employee/logout' \
  --header "Authorization: Bearer $TOKEN" \
  --header 'Accept: application/json' \
  --header 'Host: seyanty.info'
echo "\n=== POST should be 200 (control) ==="
curl --silent --write-out "\nHTTP_STATUS:%{http_code}" --location --request POST 'https://seyanty.info/api/employee/logout' \
  --header "Authorization: Bearer $TOKEN" \
  --header 'Accept: application/json' \
  --header 'Host: seyanty.info'
  ```

# Steps
1. Login obtain token.
2. GET logout with token → expect 405.
3. PUT logout → 405.
4. POST logout → 200 (control).

# Expected Result
- GET/PUT/DELETE return `405 Method Not Allowed` (or `404` if not routed) with `status:error`.
- POST remains `200` `تم تسجيل الخروج بنجاح`.
- No logout on invalid method.

- **Response Headers:** `Content-Type: application/json` must be present.
- **Database Assertion:** Token blacklisted/invalidated server-side; no employee record mutation. Subsequent auth with same token must fail.

# Post-conditions / Cleanup
If POST control already logged out token, re-login; otherwise logout token to cleanup.

# Notes
Spec header lists GET but sample uses POST – POST is authoritative; GET must fail.

# Attachments/Script
```bash
#!/usr/bin/env bash
# Test Case: TC-API-EMP-AUTH-LOGOUT-023 - Invalid HTTP Method
# Endpoint: POST https://seyanty.info/api/employee/logout

TITLE="TC-API-EMP-AUTH-LOGOUT-023: Invalid HTTP Method"
echo "=================================================="
echo "Running: $TITLE"
echo "=================================================="

# Step 1: Login to acquire token
echo "1. Performing login..."
RES_LOGIN=$(curl --silent --location --request POST 'https://seyanty.info/api/employee/login' \
  --header 'Accept: application/json' \
  --form 'email_or_name="employee-09@mail.com"' \
  --form 'password="Admin#123"')
TOKEN=$(echo "$RES_LOGIN" | jq -r '.data.token // empty')
echo "TOKEN: $TOKEN"

# Step 2: Test GET method (Expected 405)
echo -e "\n2. Testing GET method (Expected 405):"
RES_GET=$(curl --silent --write-out "\nHTTP_STATUS:%{http_code}" --location --request GET 'https://seyanty.info/api/employee/logout' \
  --header "Authorization: Bearer $TOKEN" \
  --header 'Accept: application/json' \
  --header 'Host: seyanty.info')

STATUS_GET=$(echo "$RES_GET" | grep -o 'HTTP_STATUS:[0-9]*' | cut -d: -f2)
BODY_GET=$(echo "$RES_GET" | sed '/HTTP_STATUS:/d')
echo "Status Code: $STATUS_GET"
echo "Response Body:"
echo "$BODY_GET" | jq . 2>/dev/null || echo "$BODY_GET"

# Step 3: Test PUT method (Expected 405)
echo -e "\n3. Testing PUT method (Expected 405):"
RES_PUT=$(curl --silent --write-out "\nHTTP_STATUS:%{http_code}" --location --request PUT 'https://seyanty.info/api/employee/logout' \
  --header "Authorization: Bearer $TOKEN" \
  --header 'Accept: application/json' \
  --header 'Host: seyanty.info')

STATUS_PUT=$(echo "$RES_PUT" | grep -o 'HTTP_STATUS:[0-9]*' | cut -d: -f2)
BODY_PUT=$(echo "$RES_PUT" | sed '/HTTP_STATUS:/d')
echo "Status Code: $STATUS_PUT"
echo "Response Body:"
echo "$BODY_PUT" | jq . 2>/dev/null || echo "$BODY_PUT"

# Step 4: Test POST method control (Expected 200)
echo -e "\n4. Testing POST method (Control - Expected 200):"
RES_POST=$(curl --silent --write-out "\nHTTP_STATUS:%{http_code}" --location --request POST 'https://seyanty.info/api/employee/logout' \
  --header "Authorization: Bearer $TOKEN" \
  --header 'Accept: application/json' \
  --header 'Host: seyanty.info')

STATUS_POST=$(echo "$RES_POST" | grep -o 'HTTP_STATUS:[0-9]*' | cut -d: -f2)
BODY_POST=$(echo "$RES_POST" | sed '/HTTP_STATUS:/d')
echo "Status Code: $STATUS_POST"
echo "Response Body:"
echo "$BODY_POST" | jq . 2>/dev/null || echo "$BODY_POST"

echo -e "\n=================================================="
echo "Assertions:"
echo "- Check HTTP status matches Expected Result (GET: 405, PUT: 405, POST: 200)"
echo "- Check body: status/code/message/data per spec"
echo "- For logout success, verify data==null and message تم تسجيل الخروج بنجاح"
echo "- For auth failures, verify لابد من تسجيل الدخول أولا"
echo "=================================================="
```

---
*Last Updated: {{date}} {{time}}*
