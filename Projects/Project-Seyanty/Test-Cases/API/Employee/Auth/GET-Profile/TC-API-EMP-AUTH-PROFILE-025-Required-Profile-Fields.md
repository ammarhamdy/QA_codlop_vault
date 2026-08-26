---
tc_id: TC-API-EMP-AUTH-PROFILE-025
title: Required Profile Fields
priority:
  - High
status:
  - completed
type:
  - API
linked_requirement: REQ-EMP-AUTH-PROFILE-001
tags:
  - test-case
  - api
  - employee
  - auth
  - profile
severity: Major
module: Employee - Auth - Profile
endpoint: https://seyanty.info/api/employee/profile
method: GET
author: QA Automation Engineer
run_result: pass
---

# Description & Objective
Assert all required profile fields are present and non-null (except nullable overview/photo edge).

> **Endpoint:** `GET https://seyanty.info/api/employee/profile`
> **Content-Type:** `application/json` | **Auth:** `Bearer <valid_token>` (JWT from `POST /api/employee/login`)
> **Sample:** `curl --location --request GET 'https://seyanty.info/api/employee/profile' --header 'Authorization: Bearer <valid-token>' --header 'Accept: */*'`

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `GET https://seyanty.info/api/employee/profile` |
| Required keys | `id, name, email, phone, photo, job_title, overview, status, orders_count, orders` |

# Preconditions
- Valid token.

# Request Details
- **Method & URL:** `GET https://seyanty.info/api/employee/profile`
- **Headers:**
  ```http
  User-Agent: Apidog/1.0.0 (https://apidog.com)
  Authorization: Bearer <valid_token>
  Accept: */*  (or application/json)
  Host: seyanty.info
  Connection: keep-alive
  Content-Type: application/json
  ```
- **Query/Path Params:** None.
- **Payload:** None (GET has no body).
- **Notes:** Valid GET; enumerate `data` keys via `jq keys`.
- **Complete executable cURL for this scenario:**
  ```bash
TOKEN=$(curl --silent --location --request POST 'https://seyanty.info/api/employee/login' \
  --header 'Accept: application/json' \
  --form 'email_or_name="employee-09@mail.com"' \
  --form 'password="Admin#123"' | jq -r '.data.token')
curl --silent --location --request GET 'https://seyanty.info/api/employee/profile' \
  --header "Authorization: Bearer $TOKEN" \
  --header 'Accept: application/json' \
  --header 'Host: seyanty.info' | jq '.data | keys'
  ```

# Steps
1. GET profile.
2. Check presence of each required key: `id, name, email, phone, photo, job_title, overview, status, orders_count, orders`.
3. Assert non-null for mandatory: `id, name, email, status, orders_count, orders, job_title, phone`.
4. Verify `overview` may be null but key exists; `photo` may be string URL.

# Expected Result
- All 10 keys present in `data`.
- Missing field = fail.
- Types correct.

- **Response Headers:** `Content-Type: application/json` must be present.
- **Database Assertion:** Profile read is non-mutating; no DB write. Data matches `employees` table for authenticated user.

# Post-conditions / Cleanup
None.

# Notes
Missing field indicates regression.

# Attachments/Script
```bash
#!/usr/bin/env bash
# Test Case: TC-API-EMP-AUTH-PROFILE-025 - Required Profile Fields
# Endpoint: GET https://seyanty.info/api/employee/profile

TITLE="TC-API-EMP-AUTH-PROFILE-025: Required Profile Fields"
echo "=================================================="
echo "Running: $TITLE"
echo "=================================================="

# Step 1: Login to acquire auth token
echo "1. Performing login..."
RES_LOGIN=$(curl --silent --location --request POST 'https://seyanty.info/api/employee/login' \
  --header 'Accept: application/json' \
  --form 'email_or_name="employee-09@mail.com"' \
  --form 'password="Admin#123"')

TOKEN=$(echo "$RES_LOGIN" | jq -r '.data.token // empty')
echo "TOKEN: $TOKEN"

# Step 2: Fetch Profile and inspect response schema (Expected 200)
echo -e "\n2. Fetching profile to verify required fields (Expected 200):"
RES_PROFILE=$(curl --silent --write-out "\nHTTP_STATUS:%{http_code}" --location --request GET 'https://seyanty.info/api/employee/profile' \
  --header "Authorization: Bearer $TOKEN" \
  --header 'Accept: application/json' \
  --header 'Host: seyanty.info')

HTTP_STATUS=$(echo "$RES_PROFILE" | grep -o 'HTTP_STATUS:[0-9]*' | tail -n1 | cut -d: -f2)
HTTP_BODY=$(echo "$RES_PROFILE" | sed '/HTTP_STATUS:/d')

echo "Status Code: $HTTP_STATUS"
echo "Response Body:"
echo "$HTTP_BODY" | jq . 2>/dev/null || echo "$HTTP_BODY"

# Step 3: Extract and list profile fields
echo -e "\nProfile Object Keys (.data):"
echo "$HTTP_BODY" | jq '.data | keys' 2>/dev/null || echo "Unable to parse keys"

echo -e "\n=================================================="
echo "Assertions:"
echo "- Check HTTP status matches Expected Result (200)"
echo "- Check body schema: status/code/message/data"
echo "- Check required profile fields exist in .data"
echo "- Check security: no password/sensitive leak"
echo "=================================================="
```

---
*Last Updated: {{date}} {{time}}*
