---
tc_id: TC-API-EMP-AUTH-LOGIN-022
title: Success Response Body Structure
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
Validate full success response JSON schema and types.

> **Endpoint:** `POST https://seyanty.info/api/employee/login`
> **Content-Type:** `multipart/form-data` | **Auth:** None (public endpoint; Bearer token is obtained from this call)
> **Spec note:** Target spec lists `GET https://seyanty.info/api/employee/login` but actual implementation is `POST` with `multipart/form-data` as per sample cURL – `GET` must be rejected (TC-017).

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `POST https://seyanty.info/api/employee/login` |
| email_or_name | `employee-09@mail.com` |
| password | `Admin#123` |

# Preconditions
- Valid credentials.

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
curl --silent --write-out "\nHTTP_STATUS:%{http_code}" --location --request POST 'https://seyanty.info/api/employee/login' \
  --header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
  --header 'Accept: application/json' \
  --header 'Host: seyanty.info' \
  --header 'Connection: keep-alive' \
  --form 'email_or_name="employee-09@mail.com"' \
  --form 'password="Admin#123"'
  ```

# Steps
1. POST valid.
2. Parse JSON.
3. Validate schema with jq/type checks.

# Expected Result
- HTTP 200.
- Top-level keys: `status` (string `success`), `code` (int 200), `message` (string Arabic), `data` (object).
- `data` keys: `id` (int), `name` (string), `email` (string), `phone` (string), `photo` (string URL or null), `job_title` (string), `overview` (string|null), `token` (string), `status` (string), `orders_count` (int), `orders` (array).
- `orders` array elements if any have order schema.

- **Response Headers:** `Content-Type: application/json` must be present.
- **Database Assertion:** No unintended user creation/deletion; login does not mutate employee record except possibly updating last_login/token fields.

# Post-conditions / Cleanup
None.

# Notes
Use jq to assert: `jq -e '.status=="success" and .code==200 and (.data|has("token"))'`.

# Attachments/Script
```bash
#!/usr/bin/env bash
# Test Case: TC-API-EMP-AUTH-LOGIN-022 - Success Response Body Structure
# Endpoint: POST https://seyanty.info/api/employee/login
TITLE="TC-API-EMP-AUTH-LOGIN-022: Success Response Body Structure"
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
