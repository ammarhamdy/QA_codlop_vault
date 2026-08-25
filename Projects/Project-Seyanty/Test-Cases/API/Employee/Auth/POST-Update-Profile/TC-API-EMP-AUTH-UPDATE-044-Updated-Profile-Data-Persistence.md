---
tc_id: TC-API-EMP-AUTH-UPDATE-044
title: Updated Profile Data Persistence
priority:
  - High
status:
type:
  - API
linked_requirement: REQ-EMP-AUTH-UPDATE-020
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
---

# Description & Objective
Verify updated data persists and is retrievable via GET profile after update.

> **Endpoint:** `POST https://seyanty.info/api/employee/update-profile` (spec lists `GET` but sample is `POST` – `POST` is authoritative)
> **Content-Type:** `multipart/form-data` | **Auth:** `Bearer <valid_token>` (JWT from `POST /api/employee/login`)
> **Sample:** `curl --location --request POST 'https://seyanty.info/api/employee/update-profile' --header 'Authorization: Bearer <valid-token>' --form 'name="employee-09"' --form 'email="employee-09@mail.com"' ...`

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `POST https://seyanty.info/api/employee/update-profile` then `GET https://seyanty.info/api/employee/profile` |
| Updated overview | `persistence check <ts>` |

# Preconditions
- Valid token.
- Can call GET profile.

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
- **Notes:** Sequence: update → get profile → compare.
- **Complete executable cURL for this scenario:**
  ```bash
TS=$(date +%s)
TOKEN=$(curl --silent --location --request POST 'https://seyanty.info/api/employee/login' \
  --header 'Accept: application/json' \
  --form 'email_or_name="employee-09@mail.com"' \
  --form 'password="Admin#123"' | jq -r '.data.token')
curl --silent --location --request POST 'https://seyanty.info/api/employee/update-profile' \
  --header "Authorization: Bearer $TOKEN" \
  --header 'Accept: application/json' \
  --header 'Host: seyanty.info' \
  --form 'name="employee-09"' \
  --form 'email="employee-09@mail.com"' \
  --form 'password="Admin#123"' \
  --form 'phone="0500000109"' \
  --form 'job_title="eng"' \
  --form "overview=persistence check $TS" > /tmp/upd_044.json
cat /tmp/upd_044.json | jq . 
# Use token from update response if rotated
TOKEN2=$(cat /tmp/upd_044.json | jq -r '.data.token // "'$TOKEN'"')
if [ "$TOKEN2" = "null" ] || [ -z "$TOKEN2" ]; then TOKEN2=$TOKEN; fi
echo "Fetching profile with TOKEN2..."
curl --silent --location --request GET 'https://seyanty.info/api/employee/profile' \
  --header "Authorization: Bearer $TOKEN2" \
  --header 'Accept: application/json' \
  --header 'Host: seyanty.info' | jq .
  ```

# Steps
1. Login, update overview to `persistence check $TS`.
2. Capture token from update (may be new).
3. GET profile with token (use new token if returned).
4. Assert `data.overview == "persistence check $TS"`.

# Expected Result
- Update returns 200.
- GET profile returns same `overview` value, proving DB persistence.
- Not just echo.

- **Response Headers:** `Content-Type: application/json` must be present.
- **Database Assertion:** On `200`, `employees` row for id `63` reflects updated fields; `password` stored hashed; `status` and `id` unchanged. On `422`/`401`, no DB mutation.

# Post-conditions / Cleanup
Revert overview to `experienced engineer`.

# Notes
Persistence validation – not just response echo.

# Attachments/Script
```bash
#!/usr/bin/env bash
# Test Case: TC-API-EMP-AUTH-UPDATE-044 - Updated Profile Data Persistence
# Endpoint: POST https://seyanty.info/api/employee/update-profile
TITLE="TC-API-EMP-AUTH-UPDATE-044: Updated Profile Data Persistence"
echo "=================================================="
echo "Running: $TITLE"
echo "=================================================="

RESPONSE=$(TS=$(date +%s)
TOKEN=$(curl --silent --location --request POST 'https://seyanty.info/api/employee/login' \
  --header 'Accept: application/json' \
  --form 'email_or_name="employee-09@mail.com"' \
  --form 'password="Admin#123"' | jq -r '.data.token')
curl --silent --location --request POST 'https://seyanty.info/api/employee/update-profile' \
  --header "Authorization: Bearer $TOKEN" \
  --header 'Accept: application/json' \
  --header 'Host: seyanty.info' \
  --form 'name="employee-09"' \
  --form 'email="employee-09@mail.com"' \
  --form 'password="Admin#123"' \
  --form 'phone="0500000109"' \
  --form 'job_title="eng"' \
  --form "overview=persistence check $TS" > /tmp/upd_044.json
cat /tmp/upd_044.json | jq . 
# Use token from update response if rotated
TOKEN2=$(cat /tmp/upd_044.json | jq -r '.data.token // "'$TOKEN'"')
if [ "$TOKEN2" = "null" ] || [ -z "$TOKEN2" ]; then TOKEN2=$TOKEN; fi
echo "Fetching profile with TOKEN2..."
curl --silent --location --request GET 'https://seyanty.info/api/employee/profile' \
  --header "Authorization: Bearer $TOKEN2" \
  --header 'Accept: application/json' \
  --header 'Host: seyanty.info' | jq . 2>&1)
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
