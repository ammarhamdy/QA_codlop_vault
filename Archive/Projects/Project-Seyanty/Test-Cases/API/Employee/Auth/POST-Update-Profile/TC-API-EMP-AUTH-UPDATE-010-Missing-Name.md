---
tc_id: TC-API-EMP-AUTH-UPDATE-010
title: Missing Name
priority:
  - High
status:
  - completed
type:
  - API
linked_requirement: REQ-EMP-AUTH-UPDATE-009
tags:
  - test-case
  - api
  - employee
  - auth
  - update
  - profile
severity: Major
module: Employee - Auth - Update Profile
endpoint: https://seyanty.info/api/employee/update-profile
method: POST
author: ammar
run_result: Pass
---

# Description & Objective
Verify validation when `name` is omitted entirely from multipart body.

> **Endpoint:** `POST https://seyanty.info/api/employee/update-profile` (spec lists `GET` but sample is `POST` – `POST` is authoritative)
> **Content-Type:** `multipart/form-data` | **Auth:** `Bearer <valid_token>` (JWT from `POST /api/employee/login`)
> **Sample:** `curl --location --request POST 'https://seyanty.info/api/employee/update-profile' --header 'Authorization: Bearer <valid-token>' --form 'name="employee-09"' --form 'email="employee-09@mail.com"' ...`

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `POST https://seyanty.info/api/employee/update-profile` |
| name | *(omitted)* |
| email | `employee-09@mail.com` |
| password | `Admin#123` |
| phone | `0500000109` |
| job_title | `eng` |

# Preconditions
- Valid token.

# Request Details
- **Method & URL:** `POST https://seyanty.info/api/employee/update-profile`
- **Headers:**
  ```http
  User-Agent: Apidog/1.0.0 (https://apidog.com)
  Authorization: Bearer <valid_token>
  Accept: */*  (or application/json)
  Host: seyanty.info
  Connection: keep-alive
  Content-Type: multipart/form-data; boundary=--------------------------918253417226265533759659 (auto-generated via --form)
  ```
- **Query/Path Params:** None.
- **Payload:** multipart/form-data fields: `name, email, password, phone, photo, job_title, overview` (as per test; omit/change per scenario).
- **Notes:** Send all fields except `name` (omit --form 'name=...').
- **Complete executable cURL for this scenario:**
  ```bash
TOKEN=$(curl --silent --location --request POST 'https://seyanty.info/api/employee/login' \
  --header 'Accept: application/json' \
  --form 'email_or_name="employee-09@mail.com"' \
  --form 'password="Admin#123"' | jq -r '.data.token')
curl --silent --write-out "\nHTTP_STATUS:%{http_code}" --location --request POST 'https://seyanty.info/api/employee/update-profile' \
  --header "Authorization: Bearer $TOKEN" \
  --header 'Accept: */*' \
  --header 'Host: seyanty.info' \
  --form 'email="employee-09@mail.com"' \
  --form 'password="Admin#123"' \
  --form 'phone="0500000109"' \
  --form 'job_title="eng"' \
  --form 'overview="experienced engineer"'
  ```

# Steps
1. Login.
2. POST omitting `name`.
3. Capture error.

# Expected Result
- HTTP `422` (or `400`) if validation strict; if API allows missing name, expect `200` with `name` unchanged – document actual.
- If error, body `status:error`, `code:422`, message indicates name required, `data` contains validation details.

- **Response Headers:** `Content-Type: application/json` must be present.
- **Database Assertion:** On `200`, `employees` row for id `63` reflects updated fields; `password` stored hashed; `status` and `id` unchanged. On `422`/`401`, no DB mutation.

# Post-conditions / Cleanup
None.

# Notes
Required-field enforcement – behavior may be 422 vs silent keep-old-value.

# Attachments/Script
```bash
#!/usr/bin/env bash
# Test Case: TC-API-EMP-AUTH-UPDATE-010 - Missing Name
# Endpoint: POST https://seyanty.info/api/employee/update-profile
TITLE="TC-API-EMP-AUTH-UPDATE-010: Missing Name"
echo "=================================================="
echo "Running: $TITLE"
echo "=================================================="

RESPONSE=$(TOKEN=$(curl --silent --location --request POST 'https://seyanty.info/api/employee/login' \
  --header 'Accept: application/json' \
  --form 'email_or_name="employee-09@mail.com"' \
  --form 'password="Admin#123"' | jq -r '.data.token')
curl --silent --write-out "\nHTTP_STATUS:%{http_code}" --location --request POST 'https://seyanty.info/api/employee/update-profile' \
  --header "Authorization: Bearer $TOKEN" \
  --header 'Accept: */*' \
  --header 'Host: seyanty.info' \
  --form 'email="employee-09@mail.com"' \
  --form 'password="Admin#123"' \
  --form 'phone="0500000109"' \
  --form 'job_title="eng"' \
  --form 'overview="experienced engineer"' 2>&1)
HTTP_BODY=$(echo "$RESPONSE" | grep -o '{.*}' | tail -n1)
if [ -z "$HTTP_BODY" ]; then HTTP_BODY=$(echo "$RESPONSE" | sed -e '/^TOKEN/d' | sed -e '/^OLD_PHOTO/d' | sed -e '/^NEW_TOKEN/d' | tail -n 30); fi
HTTP_STATUS=$(echo "$RESPONSE" | grep -o 'HTTP_STATUS:[0-9]*' | tail -n1 | cut -d: -f2)
if [ -z "$HTTP_STATUS" ]; then HTTP_STATUS=$(echo "$RESPONSE" | tail -n1 | sed -e 's/.*HTTP_STATUS://' | tr -d ' \n\r'); fi
if ! echo "$HTTP_STATUS" | grep -qE '^[0-9]{3}$'; then HTTP_STATUS=$(echo "$RESPONSE" | grep -Eo '[0-9]{3}' | tail -n1); fi

echo "Status Code: $HTTP_STATUS"
echo "Response Body:"
echo "$HTTP_BODY" | jq . 2>/dev/null || echo "$HTTP_BODY"
# Show auxiliary captures
echo "$RESPONSE" | grep -E '^(TOKEN|OLD_PHOTO|NEW_TOKEN|TOKEN1|TOKEN2):' || true
echo "=================================================="
echo "Assertions:"
echo "- Check HTTP status matches Expected Result"
echo "- Check body: status/code/message/data"
echo "- For success: message تم تحديث البيانات بنجاح"
echo "- For auth fail: message لابد من تسجيل الدخول أولا"
echo "- Check security: no password leak"
echo "=================================================="
```

---
*Last Updated: {{date}} {{time}}*
