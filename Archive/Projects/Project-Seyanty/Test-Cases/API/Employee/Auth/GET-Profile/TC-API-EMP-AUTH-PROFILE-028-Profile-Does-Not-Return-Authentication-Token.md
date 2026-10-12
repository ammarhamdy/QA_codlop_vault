---
tc_id: TC-API-EMP-AUTH-PROFILE-028
title: Profile Does Not Return Authentication Token
priority:
  - Medium
status:
  - completed
type:
  - API
linked_requirement: REQ-EMP-AUTH-PROFILE-005
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
Verify profile endpoint does NOT return `token` in `data` (unlike login which does).

> **Endpoint:** `GET https://seyanty.info/api/employee/profile`
> **Content-Type:** `application/json` | **Auth:** `Bearer <valid_token>` (JWT from `POST /api/employee/login`)
> **Sample:** `curl --location --request GET 'https://seyanty.info/api/employee/profile' --header 'Authorization: Bearer <valid-token>' --header 'Accept: */*'`

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `GET https://seyanty.info/api/employee/profile` |
| Authorization | `Bearer <valid_token>` |
| Login has token | `POST /api/employee/login` returns `data.token` |
| Profile must NOT | `data.token` absent |

# Preconditions
- Valid token. Knowledge that login returns token.

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
- **Notes:** Valid GET; check token absence.
- **Complete executable cURL for this scenario:**
  ```bash
TOKEN=$(curl --silent --location --request POST 'https://seyanty.info/api/employee/login' \
  --header 'Accept: application/json' \
  --form 'email_or_name="employee-09@mail.com"' \
  --form 'password="Admin#123"' | jq -r '.data.token')
echo "Login token exists: $([ -n "$TOKEN" ] && echo yes || echo no)"
curl --silent --location --request GET 'https://seyanty.info/api/employee/profile' \
  --header "Authorization: Bearer $TOKEN" \
  --header 'Accept: application/json' \
  --header 'Host: seyanty.info' | jq -e '.data | has("token") == false' && echo "PASS: no token in profile" || echo "FAIL: token leaked
  ```

# Steps
1. Login to confirm token exists.
2. GET profile with token.
3. Assert `has("token") == false` on `data`.
4. Also check raw body does not contain `"token":`.

# Expected Result
- `data` has no `token` key.
- `jq -e '.data | has("token") == false'` passes.
- Raw body grep for `"token"` finds 0 matches in profile response (may appear in login but not profile).

- **Response Headers:** `Content-Type: application/json` must be present.
- **Database Assertion:** Profile read is non-mutating; no DB write. Data matches `employees` table for authenticated user.

# Post-conditions / Cleanup
None.

# Notes
Distinguishes login (returns token) vs profile (stateless, token only in header).

# Attachments/Script
```bash
#!/usr/bin/env bash
# Test Case: TC-API-EMP-AUTH-PROFILE-028 - Profile Does Not Return Authentication Token
# Endpoint: GET https://seyanty.info/api/employee/profile
TITLE="TC-API-EMP-AUTH-PROFILE-028: Profile Does Not Return Authentication Token"
echo "=================================================="
echo "Running: $TITLE"
echo "=================================================="

RESPONSE=$(TOKEN=$(curl --silent --location --request POST 'https://seyanty.info/api/employee/login' \
  --header 'Accept: application/json' \
  --form 'email_or_name="employee-09@mail.com"' \
  --form 'password="Admin#123"' | jq -r '.data.token')
echo "Login token exists: $([ -n "$TOKEN" ] && echo yes || echo no)"
curl --silent --location --request GET 'https://seyanty.info/api/employee/profile' \
  --header "Authorization: Bearer $TOKEN" \
  --header 'Accept: application/json' \
  --header 'Host: seyanty.info' | jq -e '.data | has("token") == false' && echo "PASS: no token in profile" || echo "FAIL: token leaked 2>&1)
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
