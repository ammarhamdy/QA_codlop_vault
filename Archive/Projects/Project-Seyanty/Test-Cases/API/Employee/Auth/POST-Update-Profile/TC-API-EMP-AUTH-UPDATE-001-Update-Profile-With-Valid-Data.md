---
tc_id: TC-API-EMP-AUTH-UPDATE-001
title: Update Profile With Valid Data
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
Validate successful profile update with all valid fields via POST /api/employee/update-profile using multipart/form-data and Bearer token.

> **Endpoint:** `POST https://seyanty.info/api/employee/update-profile` (spec lists `GET` but sample is `POST` – `POST` is authoritative)
> **Content-Type:** `multipart/form-data` | **Auth:** `Bearer <valid_token>` (JWT from `POST /api/employee/login`)
> **Sample:** `curl --location --request POST 'https://seyanty.info/api/employee/update-profile' --header 'Authorization: Bearer <valid-token>' --form 'name="employee-09"' --form 'email="employee-09@mail.com"' ...`

# Test Data
| Field         | Value                                                                              |
| ------------- | ---------------------------------------------------------------------------------- |
| Endpoint      | `POST https://seyanty.info/api/employee/update-profile`                            |
| Method        | `POST`                                                                             |
| Content-Type  | `multipart/form-data; boundary=--------------------------918253417226265533759659` |
| Authorization | `Bearer <valid_token>`                                                             |
| name          | `employee-09`                                                                      |
| email         | `employee-09@mail.com`                                                             |
| password      | `Admin#123`                                                                        |
| phone         | `0500000109`                                                                       |
| job_title     | `eng`                                                                              |
| overview      | `experienced engineer`                                                             |
| photo         | `@/tmp/valid_profile.png` (image/png)                                              |

# Preconditions
- Employee `employee-09@mail.com` exists with password `Admin#123` (id 63).
- Login `POST /api/employee/login` reachable to obtain JWT.
- Update endpoint `POST /api/employee/update-profile` reachable and requires `Authorization: Bearer <token>`.
- Valid test photo exists at `/tmp/valid_profile.png` (or fallback to `/home/am/Pictures/profile/user.png`).

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
- **Notes:** All fields sent as multipart/form-data with valid values matching sample. Photo optional but included.
- **Complete executable cURL for this scenario:**
  ```bash
TOKEN=$(curl --silent --location --request POST 'https://seyanty.info/api/employee/login' \
  --header 'Accept: application/json' \
  --header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
  --form 'email_or_name="employee-09@mail.com"' \
  --form 'password="Admin#123"' | jq -r '.data.token')
echo "TOKEN:$TOKEN"
curl --silent --write-out "\nHTTP_STATUS:%{http_code}" --location --request POST 'https://seyanty.info/api/employee/update-profile' \
  --header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
  --header "Authorization: Bearer $TOKEN" \
  --header 'Accept: */*' \
  --header 'Host: seyanty.info' \
  --header 'Connection: keep-alive' \
  --form 'name="employee-09"' \
  --form 'email="employee-09@mail.com"' \
  --form 'password="Admin#123"' \
  --form 'phone="0500000109"' \
  --form 'job_title="eng"' \
  --form 'overview="experienced engineer"' \
  --form 'photo=@"/tmp/valid_profile.png"'
  ```

# Steps
1. Login as `employee-09@mail.com` / `Admin#123` and extract `data.token`.
2. Prepare multipart body with all fields `name, email, password, phone, job_title, overview, photo`.
3. Set `Authorization: Bearer $TOKEN` and `Accept: */*`.
4. POST to `https://seyanty.info/api/employee/update-profile`.
5. Capture status and body, validate schema and persistence.

# Expected Result
- HTTP `200 OK`.
- Header `Content-Type: application/json`.
- Body: `{"status":"success","code":200,"message":"تم تحديث البيانات بنجاح","data":{"id":63,"name":"employee-09","email":"employee-09@mail.com","phone":"0500000109","photo":"https://seyanty.info/storage/employees/...","job_title":"eng","overview":"experienced engineer","token":"<jwt>","status":"inactive","orders_count":null}}`.
- `data.id` remains `63`, `status` remains `inactive`.
- `token` present and fresh (may be rotated).

- **Response Headers:** `Content-Type: application/json` must be present.
- **Database Assertion:** On `200`, `employees` row for id `63` reflects updated fields; `password` stored hashed; `status` and `id` unchanged. On `422`/`401`, no DB mutation.

# Post-conditions / Cleanup
Revert any changed fields if needed by re-updating to original values. New token may be returned – store for subsequent tests. Photo file not deleted.

# Notes
Primary happy-path. Sample response shows `orders_count: null` (distinct from profile’s 0) – document actual.

# Attachments/Script
```bash
#!/usr/bin/env bash
# Test Case: TC-API-EMP-AUTH-UPDATE-001 - Update Profile With Valid Data
# Endpoint: POST https://seyanty.info/api/employee/update-profile
TITLE="TC-API-EMP-AUTH-UPDATE-001: Update Profile With Valid Data"
echo "=================================================="
echo "Running: $TITLE"
echo "=================================================="

RESPONSE=$(TOKEN=$(curl --silent --location --request POST 'https://seyanty.info/api/employee/login' \
  --header 'Accept: application/json' \
  --header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
  --form 'email_or_name="employee-09@mail.com"' \
  --form 'password="Admin#123"' | jq -r '.data.token')
echo "TOKEN:$TOKEN"
curl --silent --write-out "\nHTTP_STATUS:%{http_code}" --location --request POST 'https://seyanty.info/api/employee/update-profile' \
  --header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
  --header "Authorization: Bearer $TOKEN" \
  --header 'Accept: */*' \
  --header 'Host: seyanty.info' \
  --header 'Connection: keep-alive' \
  --form 'name="employee-09"' \
  --form 'email="employee-09@mail.com"' \
  --form 'password="Admin#123"' \
  --form 'phone="0500000109"' \
  --form 'job_title="eng"' \
  --form 'overview="experienced engineer"' \
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
