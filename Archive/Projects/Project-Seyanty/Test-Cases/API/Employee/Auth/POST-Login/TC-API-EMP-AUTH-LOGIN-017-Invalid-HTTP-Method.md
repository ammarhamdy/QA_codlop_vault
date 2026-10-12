---
tc_id: TC-API-EMP-AUTH-LOGIN-017
title: Invalid HTTP Method
priority:
  - Medium
status:
  - completed
type:
  - API
linked_requirement: REQ-EMP-AUTH-LOGIN-010
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
Verify `GET` method is rejected (endpoint is `POST`). Prompt lists endpoint as GET erroneously – correct method is POST.

> **Endpoint:** `POST https://seyanty.info/api/employee/login`
> **Content-Type:** `multipart/form-data` | **Auth:** None (public endpoint; Bearer token is obtained from this call)
> **Spec note:** Target spec lists `GET https://seyanty.info/api/employee/login` but actual implementation is `POST` with `multipart/form-data` as per sample cURL – `GET` must be rejected (TC-017).

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `GET https://seyanty.info/api/employee/login` (invalid method) |
| Method | `GET` |
| email_or_name | `employee-09@mail.com` |
| password | `Admin#123` |

# Preconditions
- Endpoint reachable.
- Valid credentials if used as query params.

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
curl --silent --write-out "\nHTTP_STATUS:%{http_code}" --location --request GET 'https://seyanty.info/api/employee/login?email_or_name=employee-09@mail.com&password=Admin%23123' \
  --header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
  --header 'Accept: application/json' \
  --header 'Host: seyanty.info' \
  --header 'Connection: keep-alive'
  ```

# Steps
1. Send GET to login URL with query params.
2. Verify Method Not Allowed.
3. Retry with POST to confirm success for contrast.

# Expected Result
- HTTP `405 Method Not Allowed` (or `404` if route not bound to GET).
- Error schema with `status: error`.
- No login, no token.

- **Response Headers:** `Content-Type: application/json` must be present.
- **Database Assertion:** No unintended user creation/deletion; login does not mutate employee record except possibly updating last_login/token fields.

# Post-conditions / Cleanup
None.

# Notes
Spec header says `GET https://seyanty.info/api/employee/login` but sample uses POST – POST is authoritative; GET must fail.

# Attachments/Script
```bash
#!/usr/bin/env bash
# Test Case: TC-API-EMP-AUTH-LOGIN-017 - Invalid HTTP Method
# Endpoint: POST https://seyanty.info/api/employee/login
TITLE="TC-API-EMP-AUTH-LOGIN-017: Invalid HTTP Method"
echo "=================================================="
echo "Running: $TITLE"
echo "=================================================="

RESPONSE=$(curl --silent --write-out "\nHTTP_STATUS:%{http_code}" --location --request GET 'https://seyanty.info/api/employee/login?email_or_name=employee-09@mail.com&password=Admin%23123' \
  --header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
  --header 'Accept: application/json' \
  --header 'Host: seyanty.info' \
  --header 'Connection: keep-alive' 2>&1)
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
