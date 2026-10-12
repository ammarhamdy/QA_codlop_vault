---
tc_id: TC-API-EMP-AUTH-PROFILE-003
title: Missing Authentication
priority:
  - High
status:
  - completed
type:
  - API
linked_requirement: REQ-EMP-AUTH-PROFILE-002
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
Verify endpoint rejects unauthenticated request when `Authorization` header is omitted.

> **Endpoint:** `GET https://seyanty.info/api/employee/profile`
> **Content-Type:** `application/json` | **Auth:** `Bearer <valid_token>` (JWT from `POST /api/employee/login`)
> **Sample:** `curl --location --request GET 'https://seyanty.info/api/employee/profile' --header 'Authorization: Bearer <valid-token>' --header 'Accept: */*'`

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `GET https://seyanty.info/api/employee/profile` |
| Authorization | *(omitted)* |
| Expected Status | `401 Unauthorized` |

# Preconditions
- Profile endpoint reachable.
- No token sent.

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
- **Notes:** Send GET with no `Authorization` header, only `Accept` and `User-Agent`.
- **Complete executable cURL for this scenario:**
  ```bash
curl --silent --write-out "\nHTTP_STATUS:%{http_code}" --location --request GET 'https://seyanty.info/api/employee/profile' \
  --header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
  --header 'Accept: */*' \
  --header 'Host: seyanty.info' \
  --header 'Connection: keep-alive'
  ```

# Steps
1. Build GET request without `Authorization` header.
2. Send to `https://seyanty.info/api/employee/profile`.
3. Capture status and body.
4. Verify 401 error schema.

# Expected Result
- HTTP `401`.
- Body: `{"status":"error","code":401,"message":"لابد من تسجيل الدخول أولا","data":null}` (Arabic message must match exactly).
- No `data` object, no profile leakage.
- Header `Content-Type: application/json`.

- **Response Headers:** `Content-Type: application/json` must be present.
- **Database Assertion:** Profile read is non-mutating; no DB write. Data matches `employees` table for authenticated user.

# Post-conditions / Cleanup
None.

# Notes
Validates authentication enforcement – must not return 200 or 500.

# Attachments/Script
```bash
#!/usr/bin/env bash
# Test Case: TC-API-EMP-AUTH-PROFILE-003 - Missing Authentication
# Endpoint: GET https://seyanty.info/api/employee/profile
TITLE="TC-API-EMP-AUTH-PROFILE-003: Missing Authentication"
echo "=================================================="
echo "Running: $TITLE"
echo "=================================================="

RESPONSE=$(curl --silent --write-out "\nHTTP_STATUS:%{http_code}" --location --request GET 'https://seyanty.info/api/employee/profile' \
  --header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
  --header 'Accept: */*' \
  --header 'Host: seyanty.info' \
  --header 'Connection: keep-alive' 2>&1)
HTTP_BODY=$(echo "$RESPONSE" | sed -e '$d' | sed -e '/^TOKEN:/d' | tail -n 50)
HTTP_STATUS=$(echo "$RESPONSE" | tail -n1 | sed -e 's/.*HTTP_STATUS://' | tr -d ' \n\r')

# If status not parsed (multi-cURL cases), try alternative extraction
if ! echo "$HTTP_STATUS" | grep -qE '^[0-9]{3}$'; then
  HTTP_STATUS=$(echo "$RESPONSE" | grep -o 'HTTP_STATUS:[0-9]*' | tail -n1 | cut -d: -f2)
fi

echo "Status Code: $HTTP_STATUS"
echo "Response Body:"
echo "$HTTP_BODY" | jq . 2>/dev/null || echo "$HTTP_BODY"
echo "=================================================="
echo "Assertions:"
echo "- Check HTTP status matches Expected Result"
echo "- Check body schema: status/code/message/data"
echo "- Check security: no password/sensitive leak"
echo "=================================================="
```

---
*Last Updated: {{date}} {{time}}*
