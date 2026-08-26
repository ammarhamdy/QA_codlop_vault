---
tc_id: TC-API-EMP-AUTH-PROFILE-001
title: Get Profile With Valid Token
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
severity: Critical
module: Employee - Auth - Profile
endpoint: https://seyanty.info/api/employee/profile
method: GET
author: QA Automation Engineer
run_result: pass
---

# Description & Objective
Validate that an authenticated employee can retrieve their profile using a valid Bearer token via GET /api/employee/profile.

> **Endpoint:** `GET https://seyanty.info/api/employee/profile`
> **Content-Type:** `application/json` | **Auth:** `Bearer <valid_token>` (JWT from `POST /api/employee/login`)
> **Sample:** `curl --location --request GET 'https://seyanty.info/api/employee/profile' --header 'Authorization: Bearer <valid-token>' --header 'Accept: */*'`

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `GET https://seyanty.info/api/employee/profile` |
| Method | `GET` |
| Content-Type | `application/json` |
| Authorization | `Bearer <valid_token>` (obtained via login) |
| Accept | `application/json` (`*/*` also accepted) |

# Preconditions
- Employee account `employee-09@mail.com` / `employee-09` exists with password `Admin#123`.
- Login endpoint `POST /api/employee/login` is reachable to obtain a valid JWT.
- Profile endpoint `GET /api/employee/profile` is reachable and requires `Authorization: Bearer <token>`.

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
- **Notes:** Headers: `Authorization: Bearer <valid_token>`, `Accept: */*` or `application/json`, `User-Agent: Apidog/1.0.0`. No query params or body.
- **Complete executable cURL for this scenario:**
  ```bash
TOKEN=$(curl --silent --location --request POST 'https://seyanty.info/api/employee/login' \
  --header 'Accept: application/json' \
  --header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
  --form 'email_or_name="employee-09@mail.com"' \
  --form 'password="Admin#123"' | jq -r '.data.token')
echo "TOKEN:$TOKEN"
curl --silent --write-out "\nHTTP_STATUS:%{http_code}" --location --request GET 'https://seyanty.info/api/employee/profile' \
  --header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
  --header "Authorization: Bearer $TOKEN" \
  --header 'Accept: */*' \
  --header 'Host: seyanty.info' \
  --header 'Connection: keep-alive'
  ```

# Steps
1. Login as `employee-09@mail.com` / `Admin#123` via `POST /api/employee/login` (multipart/form-data) and extract `data.token` with `jq -r .data.token`.
2. Set header `Authorization: Bearer $TOKEN` and `Accept: */*`.
3. Send `GET` to `https://seyanty.info/api/employee/profile`.
4. Capture HTTP status and body.
5. Validate success schema and field values.

# Expected Result
- HTTP `200 OK`.
- Header `Content-Type` contains `application/json`.
- Body: `{"status":"success","code":200,"message":"","data":{"id":63,"name":"employee-09","email":"employee-09@mail.com","phone":"0500000109","photo":"https://seyanty.info/storage/employees/...","job_title":"engineer","overview":null,"status":"inactive","orders_count":0,"orders":[]}}` (message may be empty string).
- `data.id` is integer, `data.token` must NOT be present (profile does not return token).
- No `password` or sensitive fields.

- **Response Headers:** `Content-Type: application/json` must be present.
- **Database Assertion:** Profile read is non-mutating; no DB write. Data matches `employees` table for authenticated user.

# Post-conditions / Cleanup
No state change. Token remains valid until expiry/logout; no cleanup required. Optionally call `POST /api/employee/logout` to invalidate.

# Notes
Primary happy-path for authenticated profile retrieval. Token acquisition is prerequisite.

# Attachments/Script
```bash
#!/usr/bin/env bash
# Test Case: TC-API-EMP-AUTH-PROFILE-001 - Get Profile With Valid Token
# Endpoint: GET https://seyanty.info/api/employee/profile

TITLE="TC-API-EMP-AUTH-PROFILE-001: Get Profile With Valid Token"
echo "=================================================="
echo "Running: $TITLE"
echo "=================================================="

# Step 1: Login to get a valid token
echo "1. Performing login..."
RES_LOGIN=$(curl --silent --location --request POST 'https://seyanty.info/api/employee/login' \
  --header 'Accept: application/json' \
  --header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
  --form 'email_or_name="employee-09@mail.com"' \
  --form 'password="Admin#123"')

TOKEN=$(echo "$RES_LOGIN" | jq -r '.data.token // empty')
echo "TOKEN: $TOKEN"

# Step 2: Request Profile using the acquired token (Expected 200)
echo -e "\n2. Fetching Profile with valid token (Expected 200):"
RES_PROFILE=$(curl --silent --write-out "\nHTTP_STATUS:%{http_code}" --location --request GET 'https://seyanty.info/api/employee/profile' \
  --header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
  --header "Authorization: Bearer $TOKEN" \
  --header 'Accept: application/json' \
  --header 'Host: seyanty.info' \
  --header 'Connection: keep-alive')

HTTP_STATUS=$(echo "$RES_PROFILE" | grep -o 'HTTP_STATUS:[0-9]*' | tail -n1 | cut -d: -f2)
HTTP_BODY=$(echo "$RES_PROFILE" | sed '/HTTP_STATUS:/d')

echo "Status Code: $HTTP_STATUS"
echo "Response Body:"
echo "$HTTP_BODY" | jq . 2>/dev/null || echo "$HTTP_BODY"

echo -e "\n=================================================="
echo "Assertions:"
echo "- Check HTTP status matches Expected Result (200)"
echo "- Check body schema: status/code/message/data"
echo "- Check security: no password/sensitive leak"
echo "=================================================="
```

---
*Last Updated: {{date}} {{time}}*
