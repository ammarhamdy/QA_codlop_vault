---
tc_id: TC-API-EMP-AUTH-LOGIN-008
title: Unregistered Email
priority:
  - High
status:
  - completed
type:
  - API
linked_requirement: REQ-EMP-AUTH-LOGIN-005
tags:
  - test-case
  - api
  - employee
  - auth
  - login
severity: Major
module: Employee - Auth - Login
endpoint: https://seyanty.info/api/employee/login
method: POST
author: QA Automation Engineer
run_result: pass
---

# Description & Objective
Verify login fails with non-existent (unregistered) email.

> **Endpoint:** `POST https://seyanty.info/api/employee/login`
> **Content-Type:** `multipart/form-data` | **Auth:** None (public endpoint; Bearer token is obtained from this call)
> **Spec note:** Target spec lists `GET https://seyanty.info/api/employee/login` but actual implementation is `POST` with `multipart/form-data` as per sample cURL – `GET` must be rejected (TC-017).

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `POST https://seyanty.info/api/employee/login` |
| Content-Type | `multipart/form-data` |
| email_or_name | `not-exists-999@mail.com` |
| password | `Admin#123` |

# Preconditions
- Email `not-exists-999@mail.com` does not exist in DB.

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
  Use valid format but unknown email.
- **Complete executable cURL for this scenario:**
  ```bash
curl --silent --write-out "\nHTTP_STATUS:%{http_code}" --location --request POST 'https://seyanty.info/api/employee/login' \
  --header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
  --header 'Accept: application/json' \
  --header 'Host: seyanty.info' \
  --header 'Connection: keep-alive' \
  --form 'email_or_name="not-exists-999@mail.com"' \
  --form 'password="Admin#123"'
  ```

# Steps
1. POST with unknown email.
2. Verify 401.
3. Check no sensitive info leaked.

# Expected Result
- HTTP `401`.
- Body: `{"status":"error","code":401,"message":"البيانات خاطئه","data":null}`.
- No token, no enumeration details.

- **Response Headers:** `Content-Type: application/json` must be present.
- **Database Assertion:** No unintended user creation/deletion; login does not mutate employee record except possibly updating last_login/token fields.

# Post-conditions / Cleanup
None.

# Notes
Should return generic error to avoid user enumeration.

# Attachments/Script
```bash
#!/usr/bin/env bash
# Test Case: TC-API-EMP-AUTH-LOGIN-008 - Unregistered Email
# Endpoint: POST https://seyanty.info/api/employee/login
TITLE="TC-API-EMP-AUTH-LOGIN-008: Unregistered Email"
echo "=================================================="
echo "Running: $TITLE"
echo "=================================================="

RESPONSE=$(curl --silent --write-out "\nHTTP_STATUS:%{http_code}" --location --request POST 'https://seyanty.info/api/employee/login' \
  --header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
  --header 'Accept: application/json' \
  --header 'Host: seyanty.info' \
  --header 'Connection: keep-alive' \
  --form 'email_or_name="not-exists-999@mail.com"' \
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
