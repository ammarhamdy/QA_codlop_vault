---
tc_id: TC-API-EMP-AUTH-LOGIN-001
title: Valid Login With Email
priority:
  - High
status:
  - completed
type:
  - API
linked_requirement: REQ-EMP-AUTH-LOGIN-001
tags:
  - test-case
  - api
  - employee
  - auth
  - login
severity: Critical
module: Employee - Auth - Login
endpoint: https://seyanty.info/api/employee/login
method: POST
author: QA Automation Engineer
run_result: pass
---

# Description & Objective
Validate successful employee login using a registered email address and correct password via multipart/form-data.

> **Endpoint:** `POST https://seyanty.info/api/employee/login`
> **Content-Type:** `multipart/form-data` | **Auth:** None (public endpoint; Bearer token is obtained from this call)
> **Spec note:** Target spec lists `GET https://seyanty.info/api/employee/login` but actual implementation is `POST` with `multipart/form-data` as per sample cURL – `GET` must be rejected (TC-017).

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `POST https://seyanty.info/api/employee/login` |
| Content-Type | `multipart/form-data` (with boundary) |
| email_or_name | `employee-09@mail.com` |
| password | `Admin#123` |

# Preconditions
- Employee account `employee-09@mail.com` exists and is active (or as seeded, status `inactive` still allows login per implementation).
- Valid password is `Admin#123`.
- Endpoint `POST /api/employee/login` is reachable.
- No authentication token is required for login (public endpoint).

# Request Details
- **Method & URL:** `POST https://seyanty.info/api/employee/login`
- **Headers:**
  ```http
  User-Agent: Apidog/1.0.0 (https://apidog.com)
  Accept: application/json
  Host: seyanty.info
  Connection: keep-alive
  Content-Type: multipart/form-data; boundary=--------------------------... (auto-generated when using --form)
  ```
- **Payload (form-data):**
  Headers: `Accept: application/json`, `User-Agent: Apidog/1.0.0`, `Connection: keep-alive`. Body: multipart form-data fields `email_or_name` and `password`.
- **Complete executable cURL for this scenario:**
  ```bash
curl --silent --write-out "\nHTTP_STATUS:%{http_code}" --location --request POST 'https://seyanty.info/api/employee/login' \
  --header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
  --header 'Accept: application/json' \
  --header 'Host: seyanty.info' \
  --header 'Connection: keep-alive' \
  --form 'email_or_name="employee-09@mail.com"' \
  --form 'password="Admin#123"'
  ```

# Steps
1. Prepare multipart/form-data with `email_or_name=employee-09@mail.com` and `password=Admin#123`.
2. Set header `Accept: application/json`.
3. Send `POST` request to `https://seyanty.info/api/employee/login`.
4. Capture HTTP status and response body.
5. Validate response schema and database state.

# Expected Result
- HTTP status `200 OK`.
- Response header `Content-Type` contains `application/json`.
- Body: `{ "status": "success", "code": 200, "message": "تم تسجيل الدخول بنجاح", "data": { "id", "name", "email", "phone", "photo", "job_title", "overview", "token", "status", "orders_count", "orders" } }`.
- `data.email` equals `employee-09@mail.com` and `data.name` equals `employee-09`.
- `data.token` is non-empty JWT string.
- No error field present.

- **Response Headers:** `Content-Type: application/json` must be present.
- **Database Assertion:** No unintended user creation/deletion; login does not mutate employee record except possibly updating last_login/token fields.

# Post-conditions / Cleanup
No state change to cleanup. Optionally invalidate token via logout if created; otherwise no cleanup.

# Notes
Happy-path reference. Uses seeded employee-09 from sample response. Token status may be `inactive` per sample – still considered success.

# Attachments/Script
```bash
#!/usr/bin/env bash
# Test Case: TC-API-EMP-AUTH-LOGIN-001 - Valid Login With Email
# Endpoint: POST https://seyanty.info/api/employee/login
TITLE="TC-API-EMP-AUTH-LOGIN-001: Valid Login With Email"
echo "=================================================="
echo "Running: $TITLE"
echo "=================================================="

RESPONSE=$(curl --silent --write-out "\nHTTP_STATUS:%{http_code}" --location --request POST 'https://seyanty.info/api/employee/login' \
  --header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
  --header 'Accept: application/json' \
  --header 'Host: seyanty.info' \
  --header 'Connection: keep-alive' \
  --form 'email_or_name="employee-09@mail.com"' \
  --form 'password="Admin#123"' 2>&1)
# Split body and status (last line is HTTP_STATUS:xxx)
HTTP_BODY=$(echo "$RESPONSE" | sed -e '$d')
HTTP_STATUS=$(echo "$RESPONSE" | tail -n1 | sed -e 's/.*HTTP_STATUS://')

echo "Status Code: $HTTP_STATUS"
echo "Response Body:"
echo "$HTTP_BODY" | jq . 2>/dev/null || echo "$HTTP_BODY"
echo "=================================================="
# Basic assertions (customize per TC)
echo "Assertions:"
echo "- Check HTTP status matches Expected Result section"
echo "- Check body schema: status/code/message/data per Expected Result"
echo "- Check no sensitive fields leaked (grep -i password)"
echo "=================================================="
```

---
*Last Updated: {{date}} {{time}}*
