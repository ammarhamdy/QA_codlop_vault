---
tc_id: TC-API-EMP-AUTH-UPDATE-043
title: Updated Profile Data Accuracy
priority:
  - High
status:
  - completed
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
run_result: Pass
---

# Description & Objective
Verify data returned by update matches sent values (field-level accuracy).

> **Endpoint:** `POST https://seyanty.info/api/employee/update-profile` (spec lists `GET` but sample is `POST` – `POST` is authoritative)
> **Content-Type:** `multipart/form-data` | **Auth:** `Bearer <valid_token>` (JWT from `POST /api/employee/login`)
> **Sample:** `curl --location --request POST 'https://seyanty.info/api/employee/update-profile' --header 'Authorization: Bearer <valid-token>' --form 'name="employee-09"' --form 'email="employee-09@mail.com"' ...`

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `POST https://seyanty.info/api/employee/update-profile` |
| Sent name | `employee-09-accuracy` |
| Sent email | `employee-09@mail.com` (keep) |
| Sent phone | `0500000222` |
| Sent job_title | `qa_eng` |
| Sent overview | `accuracy test` |

# Preconditions
- Valid token.
- New values known.

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
- **Notes:** Send known new values and compare to `data` in response.
- **Complete executable cURL for this scenario:**
  ```bash
TOKEN=$(curl --silent --location --request POST 'https://seyanty.info/api/employee/login' \
  --header 'Accept: application/json' \
  --form 'email_or_name="employee-09@mail.com"' \
  --form 'password="Admin#123"' | jq -r '.data.token')
curl --silent --location --request POST 'https://seyanty.info/api/employee/update-profile' \
  --header "Authorization: Bearer $TOKEN" \
  --header 'Accept: application/json' \
  --header 'Host: seyanty.info' \
  --form 'name="employee-09-accuracy"' \
  --form 'email="employee-09@mail.com"' \
  --form 'password="Admin#123"' \
  --form 'phone="0500000222"' \
  --form 'job_title="qa_eng"' \
  --form 'overview="accuracy test"' | jq '.data'
  ```

# Steps
1. Login, POST with `name=employee-09-accuracy`, `phone=0500000222`, `job_title=qa_eng`, `overview=accuracy test`.
2. Extract `data.name`, `data.phone`, `data.job_title`, `data.overview`.
3. Assert each equals sent value.

# Expected Result
- `data.name == "employee-09-accuracy"`, `data.phone == "0500000222"`, `data.job_title == "qa_eng"`, `data.overview == "accuracy test"`.

- **Response Headers:** `Content-Type: application/json` must be present.
- **Database Assertion:** On `200`, `employees` row for id `63` reflects updated fields; `password` stored hashed; `status` and `id` unchanged. On `422`/`401`, no DB mutation.

# Post-conditions / Cleanup
Revert to originals: name `employee-09`, phone `0500000109`, job_title `eng`, overview `experienced engineer`.

# Notes
Field-by-field accuracy.

# Attachments/Script
```bash
#!/usr/bin/env bash
# Test Case: TC-API-EMP-AUTH-UPDATE-043 - Updated Profile Data Accuracy
# Endpoint: POST https://seyanty.info/api/employee/update-profile
TITLE="TC-API-EMP-AUTH-UPDATE-043: Updated Profile Data Accuracy"
echo "=================================================="
echo "Running: $TITLE"
echo "=================================================="

RESPONSE=$(TOKEN=$(curl --silent --location --request POST 'https://seyanty.info/api/employee/login' \
  --header 'Accept: application/json' \
  --form 'email_or_name="employee-09@mail.com"' \
  --form 'password="Admin#123"' | jq -r '.data.token')
curl --silent --location --request POST 'https://seyanty.info/api/employee/update-profile' \
  --header "Authorization: Bearer $TOKEN" \
  --header 'Accept: application/json' \
  --header 'Host: seyanty.info' \
  --form 'name="employee-09-accuracy"' \
  --form 'email="employee-09@mail.com"' \
  --form 'password="Admin#123"' \
  --form 'phone="0500000222"' \
  --form 'job_title="qa_eng"' \
  --form 'overview="accuracy test"' | jq '.data' 2>&1)
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
