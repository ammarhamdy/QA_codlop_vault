---
tc_id: TC-API-EMP-AUTH-UPDATE-009
title: Update All Profile Fields
priority:
  - High
status:
  - completed
type:
  - API
linked_requirement: REQ-EMP-AUTH-UPDATE-001
tags:
  - test-case
  - api
  - employee
  - auth
  - update
  - profile
severity: Critical
module: Employee - Auth - Update Profile
endpoint: https://seyanty.info/api/employee/update-profile
method: POST
author: ammar
run_result: Pass
---

# Description & Objective
Verify updating all mutable fields simultaneously in one request persists atomically.

> **Endpoint:** `POST https://seyanty.info/api/employee/update-profile` (spec lists `GET` but sample is `POST` – `POST` is authoritative)
> **Content-Type:** `multipart/form-data` | **Auth:** `Bearer <valid_token>` (JWT from `POST /api/employee/login`)
> **Sample:** `curl --location --request POST 'https://seyanty.info/api/employee/update-profile' --header 'Authorization: Bearer <valid-token>' --form 'name="employee-09"' --form 'email="employee-09@mail.com"' ...`

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `POST https://seyanty.info/api/employee/update-profile` |
| name | `employee-09-all-` + timestamp |
| email | `employee-09-all-<ts>@mail.com` |
| password | `Admin#123` (keep to avoid lockout) |
| phone | `0500000999` |
| job_title | `fullstack` |
| overview | `all fields updated at <ts>` |
| photo | `@/tmp/valid_profile.png` |

# Preconditions
- Valid token.
- All new values unique (timestamp suffix) to avoid collision.

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
- **Notes:** Send all fields with new unique values in single multipart request.
- **Complete executable cURL for this scenario:**
  ```bash
TS=$(date +%s)
TOKEN=$(curl --silent --location --request POST 'https://seyanty.info/api/employee/login' \
  --header 'Accept: application/json' \
  --form 'email_or_name="employee-09@mail.com"' \
  --form 'password="Admin#123"' | jq -r '.data.token')
[ -f /tmp/valid_profile.png ] || (echo "iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR42mP8/x8AAwMCAO+ip1sAAAAASUVORK5CYII=" | base64 -d > /tmp/valid_profile.png)
curl --silent --write-out "\nHTTP_STATUS:%{http_code}" --location --request POST 'https://seyanty.info/api/employee/update-profile' \
  --header "Authorization: Bearer $TOKEN" \
  --header 'Accept: */*' \
  --header 'Host: seyanty.info' \
  --form "name=employee-09-all-$TS" \
  --form "email=employee-09-all-$TS@mail.com" \
  --form 'password="Admin#123"' \
  --form 'phone="0500000999"' \
  --form 'job_title="fullstack"' \
  --form "overview=all fields updated at $TS" \
  --form 'photo=@"/tmp/valid_profile.png"'
  ```

# Steps
1. Login.
2. Generate TS, POST all fields with TS suffix.
3. Verify each `data.*` matches sent values.
4. GET profile to confirm.

# Expected Result
- HTTP `200`.
- All `data` fields equal sent values (name, email, phone, job_title, overview, photo URL).
- Token present.

- **Response Headers:** `Content-Type: application/json` must be present.
- **Database Assertion:** On `200`, `employees` row for id `63` reflects updated fields; `password` stored hashed; `status` and `id` unchanged. On `422`/`401`, no DB mutation.

# Post-conditions / Cleanup
Revert all fields to originals: `employee-09`, `employee-09@mail.com`, `0500000109`, `eng`, `experienced engineer` via second update. Handle email revert as critical.

# Notes
Atomic multi-field update – if one fails,全 should roll back.

# Attachments/Script
```bash
#!/usr/bin/env bash
# Test Case: TC-API-EMP-AUTH-UPDATE-009 - Update All Profile Fields
# Endpoint: POST https://seyanty.info/api/employee/update-profile
TITLE="TC-API-EMP-AUTH-UPDATE-009: Update All Profile Fields"
echo "=================================================="
echo "Running: $TITLE"
echo "=================================================="

RESPONSE=$(TS=$(date +%s)
TOKEN=$(curl --silent --location --request POST 'https://seyanty.info/api/employee/login' \
  --header 'Accept: application/json' \
  --form 'email_or_name="employee-09@mail.com"' \
  --form 'password="Admin#123"' | jq -r '.data.token')
[ -f /tmp/valid_profile.png ] || (echo "iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR42mP8/x8AAwMCAO+ip1sAAAAASUVORK5CYII=" | base64 -d > /tmp/valid_profile.png)
curl --silent --write-out "\nHTTP_STATUS:%{http_code}" --location --request POST 'https://seyanty.info/api/employee/update-profile' \
  --header "Authorization: Bearer $TOKEN" \
  --header 'Accept: */*' \
  --header 'Host: seyanty.info' \
  --form "name=employee-09-all-$TS" \
  --form "email=employee-09-all-$TS@mail.com" \
  --form 'password="Admin#123"' \
  --form 'phone="0500000999"' \
  --form 'job_title="fullstack"' \
  --form "overview=all fields updated at $TS" \
  --form 'photo=@"/tmp/valid_profile.png"' 2>&1)
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
