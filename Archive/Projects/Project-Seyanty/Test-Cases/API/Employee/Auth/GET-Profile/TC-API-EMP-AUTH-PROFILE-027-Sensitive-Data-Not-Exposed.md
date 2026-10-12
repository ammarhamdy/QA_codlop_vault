---
tc_id: TC-API-EMP-AUTH-PROFILE-027
title: Sensitive Data Not Exposed
priority:
  - High
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
severity: Critical
module: Employee - Auth - Profile
endpoint: https://seyanty.info/api/employee/profile
method: GET
author: QA Automation Engineer
run_result: pass
---

# Description & Objective
Verify no sensitive internal fields (hashes, remember_token, secrets) are leaked beyond allowed profile fields.

> **Endpoint:** `GET https://seyanty.info/api/employee/profile`
> **Content-Type:** `application/json` | **Auth:** `Bearer <valid_token>` (JWT from `POST /api/employee/login`)
> **Sample:** `curl --location --request GET 'https://seyanty.info/api/employee/profile' --header 'Authorization: Bearer <valid-token>' --header 'Accept: */*'`

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `GET https://seyanty.info/api/employee/profile` |
| Allowed keys | `id, name, email, phone, photo, job_title, overview, status, orders_count, orders` |
| Forbidden keys | `password, password_hash, remember_token, secret, api_secret, pivot, email_verified_at` unless explicitly allowed |

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
- **Notes:** Valid GET; dump `data | keys` and scan for forbidden.
- **Complete executable cURL for this scenario:**
  ```bash
TOKEN=$(curl --silent --location --request POST 'https://seyanty.info/api/employee/login' \
  --header 'Accept: application/json' \
  --form 'email_or_name="employee-09@mail.com"' \
  --form 'password="Admin#123"' | jq -r '.data.token')
curl --silent --include --location --request GET 'https://seyanty.info/api/employee/profile' \
  --header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
  --header "Authorization: Bearer $TOKEN" \
  --header 'Accept: application/json' \
  --header 'Host: seyanty.info' \
  | tee /tmp/emp_profile_027.txt; echo "---KEYS---"; cat /tmp/emp_profile_027.txt | grep -o '{.*}' | jq '.data | keys' 2>/dev/null || cat /tmp/emp_profile_027.txt | jq '.data | keys'
  ```

# Steps
1. GET profile.
2. List `data` keys.
3. Assert only allowed keys present; no `remember_token`, `secret` etc.
4. Check response does not contain stack trace or SQL error.

# Expected Result
- Allowed keys only: `id, name, email, phone, photo, job_title, overview, status, orders_count, orders`.
- No sensitive fields, no internal debug.
- No other users' data.

- **Response Headers:** `Content-Type: application/json` must be present.
- **Database Assertion:** Profile read is non-mutating; no DB write. Data matches `employees` table for authenticated user.

# Post-conditions / Cleanup
None.

# Notes
Broader audit than TC-026 – general sensitive-data exposure.

# Attachments/Script
```bash
#!/usr/bin/env bash
# Test Case: TC-API-EMP-AUTH-PROFILE-027 - Sensitive Data Not Exposed
# Endpoint: GET https://seyanty.info/api/employee/profile
TITLE="TC-API-EMP-AUTH-PROFILE-027: Sensitive Data Not Exposed"
echo "=================================================="
echo "Running: $TITLE"
echo "=================================================="

RESPONSE=$(TOKEN=$(curl --silent --location --request POST 'https://seyanty.info/api/employee/login' \
  --header 'Accept: application/json' \
  --form 'email_or_name="employee-09@mail.com"' \
  --form 'password="Admin#123"' | jq -r '.data.token')
curl --silent --include --location --request GET 'https://seyanty.info/api/employee/profile' \
  --header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
  --header "Authorization: Bearer $TOKEN" \
  --header 'Accept: application/json' \
  --header 'Host: seyanty.info' \
  | tee /tmp/emp_profile_027.txt; echo "---KEYS---"; cat /tmp/emp_profile_027.txt | grep -o '{.*}' | jq '.data | keys' 2>/dev/null || cat /tmp/emp_profile_027.txt | jq '.data | keys' 2>&1)
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
