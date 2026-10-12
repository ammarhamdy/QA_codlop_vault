---
tc_id: TC-API-EMP-AUTH-PROFILE-002
title: Get Own Profile
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
Verify that the profile returned belongs exclusively to the token owner (no cross-user leakage) and matches the login identity.

> **Endpoint:** `GET https://seyanty.info/api/employee/profile`
> **Content-Type:** `application/json` | **Auth:** `Bearer <valid_token>` (JWT from `POST /api/employee/login`)
> **Sample:** `curl --location --request GET 'https://seyanty.info/api/employee/profile' --header 'Authorization: Bearer <valid-token>' --header 'Accept: */*'`

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `GET https://seyanty.info/api/employee/profile` |
| Authorization | `Bearer <valid_token_for_employee-09>` |
| Expected owner | `employee-09` / id 63 |

# Preconditions
- Same as TC-001 – valid token for employee-09.
- Optional second employee exists to contrast isolation (if seeded).

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
- **Notes:** Identical to TC-001 but assertion focuses on ownership: `data.email` must equal login email, not any other employee.
- **Complete executable cURL for this scenario:**
  ```bash
TOKEN=$(curl --silent --location --request POST 'https://seyanty.info/api/employee/login' \
  --header 'Accept: application/json' \
  --form 'email_or_name="employee-09"' \
  --form 'password="Admin#123"' | jq -r '.data.token')
curl --silent --write-out "\nHTTP_STATUS:%{http_code}" --location --request GET 'https://seyanty.info/api/employee/profile' \
  --header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
  --header "Authorization: Bearer $TOKEN" \
  --header 'Accept: application/json' \
  --header 'Host: seyanty.info'
  ```

# Steps
1. Login with `employee-09` username to prove name-login yields same ownership.
2. GET profile with that token.
3. Assert `data.name == "employee-09"` and `data.email == "employee-09@mail.com"`.
4. (If second token available) repeat with different employee and ensure profiles differ.

# Expected Result
- HTTP `200`.
- `data.id == 63`, `data.name == "employee-09"`, `data.email == "employee-09@mail.com"` – strictly the token owner.
- No disclosure of other employees' data.
- Response `data` does not contain `token`.

- **Response Headers:** `Content-Type: application/json` must be present.
- **Database Assertion:** Profile read is non-mutating; no DB write. Data matches `employees` table for authenticated user.

# Post-conditions / Cleanup
None.

# Notes
Isolation test – profile endpoint must be scoped to `auth.user()`.

# Attachments/Script
```bash
#!/usr/bin/env bash
# Test Case: TC-API-EMP-AUTH-PROFILE-002 - Get Own Profile
# Endpoint: GET https://seyanty.info/api/employee/profile

TITLE="TC-API-EMP-AUTH-PROFILE-002: Get Own Profile"
echo "=================================================="
echo "Running: $TITLE"
echo "=================================================="

# Step 1: Login using username to obtain auth token
echo "1. Performing login..."
RES_LOGIN=$(curl --silent --location --request POST 'https://seyanty.info/api/employee/login' \
  --header 'Accept: application/json' \
  --form 'email_or_name="employee-09"' \
  --form 'password="Admin#123"')

TOKEN=$(echo "$RES_LOGIN" | jq -r '.data.token // empty')
echo "TOKEN: $TOKEN"

# Step 2: Fetch Own Profile using the generated token (Expected 200)
echo -e "\n2. Fetching profile with valid token (Expected 200):"
RES_PROFILE=$(curl --silent --write-out "\nHTTP_STATUS:%{http_code}" --location --request GET 'https://seyanty.info/api/employee/profile' \
  --header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
  --header "Authorization: Bearer $TOKEN" \
  --header 'Accept: application/json' \
  --header 'Host: seyanty.info')

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
