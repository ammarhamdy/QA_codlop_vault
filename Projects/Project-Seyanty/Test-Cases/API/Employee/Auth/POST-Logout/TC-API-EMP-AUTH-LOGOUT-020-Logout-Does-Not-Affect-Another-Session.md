---
tc_id: TC-API-EMP-AUTH-LOGOUT-020
title: Logout Does Not Affect Another Session
priority:
  - Medium
status:
  - completed
type:
  - API
linked_requirement: REQ-EMP-AUTH-LOGOUT-006
tags:
  - test-case
  - api
  - employee
  - auth
  - logout
severity: Major
module: Employee - Auth - Logout
endpoint: https://seyanty.info/api/employee/logout
method: POST
author: ammar
run_result: pass
---

# Description & Objective
Verify logging out one session/token does not invalidate another concurrent session/token of same or different user.

> **Endpoint:** `POST https://seyanty.info/api/employee/logout` (spec lists `GET` but sample is `POST` – `POST` is authoritative)
> **Content-Type:** `application/json` | **Auth:** `Bearer <valid_token>` (JWT from `POST /api/employee/login`)
> **Sample:** `curl --location --request POST 'https://seyanty.info/api/employee/logout' --header 'Authorization: Bearer <valid-token>' --header 'Accept: */*'`

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `POST https://seyanty.info/api/employee/logout` for TOKEN_A only |
| TOKEN_A | first login token |
| TOKEN_B | second login token (same user, 1 sec apart) |

# Preconditions
- Can obtain two tokens via two logins.

# Request Details
- **Method & URL:** `POST https://seyanty.info/api/employee/logout`
- **Headers:**
  ```http
  User-Agent: Apidog/1.0.0 (https://apidog.com)
  Authorization: Bearer <valid_token>
  Accept: */*
  Host: seyanty.info
  Connection: keep-alive
  Content-Type: application/json
  ```
- **Query/Path Params:** None.
- **Payload:** None (logout has no body).
- **Notes:** Login twice quickly to get two JWTs (jti/iat differ), logout TOKEN_A, then verify TOKEN_B still works on profile.
- **Complete executable cURL for this scenario:**
  ```bash
TOKEN_A=$(curl --silent --location --request POST 'https://seyanty.info/api/employee/login' \
  --header 'Accept: application/json' \
  --form 'email_or_name="employee-09@mail.com"' \
  --form 'password="Admin#123"' | jq -r '.data.token')
sleep 1
TOKEN_B=$(curl --silent --location --request POST 'https://seyanty.info/api/employee/login' \
  --header 'Accept: application/json' \
  --form 'email_or_name="employee-09@mail.com"' \
  --form 'password="Admin#123"' | jq -r '.data.token')
echo "TOKEN_A:$TOKEN_A"
echo "TOKEN_B:$TOKEN_B"
echo "Logout TOKEN_A:"
curl --silent --location --request POST 'https://seyanty.info/api/employee/logout' \
  --header "Authorization: Bearer $TOKEN_A" \
  --header 'Accept: application/json' \
  --header 'Host: seyanty.info' | jq .
echo "Profile with TOKEN_B (should still be 200):"
curl --silent --write-out "\nHTTP_STATUS:%{http_code}" --location --request GET 'https://seyanty.info/api/employee/profile' \
  --header "Authorization: Bearer $TOKEN_B" \
  --header 'Accept: application/json' \
  --header 'Host: seyanty.info'
echo "\nProfile with TOKEN_A (should be 401):"
curl --silent --write-out "\nHTTP_STATUS:%{http_code}" --location --request GET 'https://seyanty.info/api/employee/profile' \
  --header "Authorization: Bearer $TOKEN_A" \
  --header 'Accept: application/json' \
  --header 'Host: seyanty.info'
  ```

# Steps
1. Login → TOKEN_A.
2. Sleep 1, login → TOKEN_B (different jti).
3. Logout TOKEN_A.
4. GET profile with TOKEN_B → expect 200.
5. GET profile with TOKEN_A → expect 401.

# Expected Result
- Logout TOKEN_A returns 200.
- TOKEN_B still valid → GET profile 200.
- TOKEN_A invalid → GET profile 401.
- Proves per-token invalidation, not per-user.

- **Response Headers:** `Content-Type: application/json` must be present.
- **Database Assertion:** Token blacklisted/invalidated server-side; no employee record mutation. Subsequent auth with same token must fail.

# Post-conditions / Cleanup
Logout TOKEN_B to cleanup; then re-login as needed.

# Notes
Critical concurrency – logout must be token-scoped, not user-scoped.

# Attachments/Script
```bash
#!/usr/bin/env bash
# Test Case: TC-API-EMP-AUTH-LOGOUT-020 - Logout Does Not Affect Another Session
# Endpoint: POST https://seyanty.info/api/employee/logout

TITLE="TC-API-EMP-AUTH-LOGOUT-020: Logout Does Not Affect Another Session"
echo "=================================================="
echo "Running: $TITLE"
echo "=================================================="

# Step 1: Generate Session A (TOKEN_A)
echo "1. Logging in Session A..."
RES_LOGIN_A=$(curl --silent --location --request POST 'https://seyanty.info/api/employee/login' \
  --header 'Accept: application/json' \
  --form 'email_or_name="employee-09@mail.com"' \
  --form 'password="Admin#123"')
TOKEN_A=$(echo "$RES_LOGIN_A" | jq -r '.data.token // empty')
echo "TOKEN_A: $TOKEN_A"

sleep 1

# Step 2: Generate Session B (TOKEN_B)
echo -e "\n2. Logging in Session B..."
RES_LOGIN_B=$(curl --silent --location --request POST 'https://seyanty.info/api/employee/login' \
  --header 'Accept: application/json' \
  --form 'email_or_name="employee-09@mail.com"' \
  --form 'password="Admin#123"')
TOKEN_B=$(echo "$RES_LOGIN_B" | jq -r '.data.token // empty')
echo "TOKEN_B: $TOKEN_B"

# Step 3: Invalidate Session A (Logout)
echo -e "\n3. Logging out TOKEN_A..."
RES_LOGOUT_A=$(curl --silent --location --request POST 'https://seyanty.info/api/employee/logout' \
  --header "Authorization: Bearer $TOKEN_A" \
  --header 'Accept: application/json' \
  --header 'Host: seyanty.info')
echo "$RES_LOGOUT_A" | jq . 2>/dev/null || echo "$RES_LOGOUT_A"

# Step 4: Verify Session B is still valid (Expected 200)
echo -e "\n4. Verifying Profile with TOKEN_B (Expected 200):"
RES_PROFILE_B=$(curl --silent --write-out "\nHTTP_STATUS:%{http_code}" --location --request GET 'https://seyanty.info/api/employee/profile' \
  --header "Authorization: Bearer $TOKEN_B" \
  --header 'Accept: application/json' \
  --header 'Host: seyanty.info')

STATUS_B=$(echo "$RES_PROFILE_B" | grep -o 'HTTP_STATUS:[0-9]*' | cut -d: -f2)
BODY_B=$(echo "$RES_PROFILE_B" | sed '/HTTP_STATUS:/d')
echo "Status Code: $STATUS_B"
echo "Response Body:"
echo "$BODY_B" | jq . 2>/dev/null || echo "$BODY_B"

# Step 5: Verify Session A is invalidated (Expected 401)
echo -e "\n5. Verifying Profile with TOKEN_A (Expected 401):"
RES_PROFILE_A=$(curl --silent --write-out "\nHTTP_STATUS:%{http_code}" --location --request GET 'https://seyanty.info/api/employee/profile' \
  --header "Authorization: Bearer $TOKEN_A" \
  --header 'Accept: application/json' \
  --header 'Host: seyanty.info')

STATUS_A=$(echo "$RES_PROFILE_A" | grep -o 'HTTP_STATUS:[0-9]*' | cut -d: -f2)
BODY_A=$(echo "$RES_PROFILE_A" | sed '/HTTP_STATUS:/d')
echo "Status Code: $STATUS_A"
echo "Response Body:"
echo "$BODY_A" | jq . 2>/dev/null || echo "$BODY_A"

echo -e "\n=================================================="
echo "Assertions:"
echo "- Check HTTP status matches Expected Result (Session B = 200, Session A = 401)"
echo "- Check body: status/code/message/data per spec"
echo "- For logout success, verify data==null and message تم تسجيل الخروج بنجاح"
echo "- For auth failures, verify لابد من تسجيل الدخول أولا"
echo "=================================================="
```

---
*Last Updated: {{date}} {{time}}*
