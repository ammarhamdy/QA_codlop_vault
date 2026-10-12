---
tc_id: TC-API-EMP-AUTH-LOGIN-031
title: Unique Token Generated Per Login
priority:
  - Medium
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
severity: Minor
module: Employee - Auth - Login
endpoint: https://seyanty.info/api/employee/login
method: POST
author: QA Automation Engineer
run_result: pass
---

# Description & Objective
Verify each login generates a fresh unique token (not static).

> **Endpoint:** `POST https://seyanty.info/api/employee/login`
> **Content-Type:** `multipart/form-data` | **Auth:** None (public endpoint; Bearer token is obtained from this call)
> **Spec note:** Target spec lists `GET https://seyanty.info/api/employee/login` but actual implementation is `POST` with `multipart/form-data` as per sample cURL – `GET` must be rejected (TC-017).

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `POST https://seyanty.info/api/employee/login` (twice) |
| email_or_name | `employee-09@mail.com` |
| password | `Admin#123` |

# Preconditions
- Valid credentials, able to call login twice.

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
  See curl and Test Data.
- **Complete executable cURL for this scenario:**
  ```bash
TOKEN1=$(curl --silent --location --request POST 'https://seyanty.info/api/employee/login' \
  --header 'Accept: application/json' \
  --form 'email_or_name="employee-09@mail.com"' \
  --form 'password="Admin#123"' | jq -r '.data.token'); TOKEN2=$(curl --silent --location --request POST 'https://seyanty.info/api/employee/login' \
  --header 'Accept: application/json' \
  --form 'email_or_name="employee-09@mail.com"' \
  --form 'password="Admin#123"' | jq -r '.data.token'); echo "TOKEN1=$TOKEN1"; echo "TOKEN2=$TOKEN2"; if [ "$TOKEN1" = "$TOKEN2" ]; then echo "FAIL: tokens identical"; else echo "PASS: tokens unique"; fi
  ```

# Steps
1. Login first time, save TOKEN1.
2. Wait 1 sec, login again, save TOKEN2.
3. Compare tokens; they should differ (JWT jti/iat changes).
4. Optionally verify both (or only latest) is valid via profile call.

# Expected Result
- Two successive logins return different `token` strings (`TOKEN1 != TOKEN2`).
- Both tokens structurally valid JWT; at least the latest is usable.
- If implementation returns same token until expiry, document behavior but ideally expects unique.

- **Response Headers:** `Content-Type: application/json` must be present.
- **Database Assertion:** No unintended user creation/deletion; login does not mutate employee record except possibly updating last_login/token fields.

# Post-conditions / Cleanup
None.

# Notes
Validates session uniqueness; helps detect static token bug.

# Attachments/Script
```bash
#!/usr/bin/env bash
# Test Case: TC-API-EMP-AUTH-LOGIN-031 - Unique Token Generated Per Login
# Endpoint: POST https://seyanty.info/api/employee/login
TITLE="TC-API-EMP-AUTH-LOGIN-031: Unique Token Generated Per Login"
echo "=================================================="
echo "Running: $TITLE"
echo "=================================================="

RESPONSE=$(TOKEN1=$(curl --silent --location --request POST 'https://seyanty.info/api/employee/login' \
  --header 'Accept: application/json' \
  --form 'email_or_name="employee-09@mail.com"' \
  --form 'password="Admin#123"' | jq -r '.data.token'); TOKEN2=$(curl --silent --location --request POST 'https://seyanty.info/api/employee/login' \
  --header 'Accept: application/json' \
  --form 'email_or_name="employee-09@mail.com"' \
  --form 'password="Admin#123"' | jq -r '.data.token'); echo "TOKEN1=$TOKEN1"; echo "TOKEN2=$TOKEN2"; if [ "$TOKEN1" = "$TOKEN2" ]; then echo "FAIL: tokens identical"; else echo "PASS: tokens unique"; fi 2>&1)
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
