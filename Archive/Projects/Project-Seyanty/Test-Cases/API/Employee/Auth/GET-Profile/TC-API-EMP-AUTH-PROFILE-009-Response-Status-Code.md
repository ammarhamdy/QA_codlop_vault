---
tc_id: TC-API-EMP-AUTH-PROFILE-009
title: Response Status Code
priority:
  - High
status:
  - completed
type:
  - API
linked_requirement: REQ-EMP-AUTH-PROFILE-003
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
Assert correct HTTP status codes for both success (200) and unauthorized (401) scenarios.

> **Endpoint:** `GET https://seyanty.info/api/employee/profile`
> **Content-Type:** `application/json` | **Auth:** `Bearer <valid_token>` (JWT from `POST /api/employee/login`)
> **Sample:** `curl --location --request GET 'https://seyanty.info/api/employee/profile' --header 'Authorization: Bearer <valid-token>' --header 'Accept: */*'`

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `GET https://seyanty.info/api/employee/profile` |
| Valid token expected | `200` |
| Missing token expected | `401` |

# Preconditions
- Valid token and also ability to send without token.

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
- **Notes:** Two sub-requests: one with valid Bearer, one without.
- **Complete executable cURL for this scenario:**
  ```bash
TOKEN=$(curl --silent --location --request POST 'https://seyanty.info/api/employee/login' \
  --header 'Accept: application/json' \
  --form 'email_or_name="employee-09@mail.com"' \
  --form 'password="Admin#123"' | jq -r '.data.token')
echo "=== Valid token should be 200 ==="
curl --silent --write-out "\nHTTP_STATUS:%{http_code}" --location --request GET 'https://seyanty.info/api/employee/profile' \
  --header "Authorization: Bearer $TOKEN" \
  --header 'Accept: application/json' \
  --header 'Host: seyanty.info'
echo "\n=== Missing token should be 401 ==="
curl --silent --write-out "\nHTTP_STATUS:%{http_code}" --location --request GET 'https://seyanty.info/api/employee/profile' \
  --header 'Accept: application/json' \
  --header 'Host: seyanty.info'
  ```

# Steps
1. GET with valid token → assert 200.
2. GET without token → assert 401.
3. Ensure no other codes (e.g., 302, 500) appear.

# Expected Result
- Valid: HTTP `200`, body `code:200`.
- Invalid/missing: HTTP `401`, body `code:401`.
- Status code equals body `code` field in both cases.

- **Response Headers:** `Content-Type: application/json` must be present.
- **Database Assertion:** Profile read is non-mutating; no DB write. Data matches `employees` table for authenticated user.

# Post-conditions / Cleanup
None.

# Notes
Status-code contract test.

# Attachments/Script
```bash
#!/usr/bin/env bash
# Test Case: TC-API-EMP-AUTH-PROFILE-009 - Response Status Code
# Endpoint: GET https://seyanty.info/api/employee/profile
TITLE="TC-API-EMP-AUTH-PROFILE-009: Response Status Code"
echo "=================================================="
echo "Running: $TITLE"
echo "=================================================="

RESPONSE=$(TOKEN=$(curl --silent --location --request POST 'https://seyanty.info/api/employee/login' \
  --header 'Accept: application/json' \
  --form 'email_or_name="employee-09@mail.com"' \
  --form 'password="Admin#123"' | jq -r '.data.token')
echo "=== Valid token should be 200 ==="
curl --silent --write-out "\nHTTP_STATUS:%{http_code}" --location --request GET 'https://seyanty.info/api/employee/profile' \
  --header "Authorization: Bearer $TOKEN" \
  --header 'Accept: application/json' \
  --header 'Host: seyanty.info'
echo "\n=== Missing token should be 401 ==="
curl --silent --write-out "\nHTTP_STATUS:%{http_code}" --location --request GET 'https://seyanty.info/api/employee/profile' \
  --header 'Accept: application/json' \
  --header 'Host: seyanty.info' 2>&1)
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
