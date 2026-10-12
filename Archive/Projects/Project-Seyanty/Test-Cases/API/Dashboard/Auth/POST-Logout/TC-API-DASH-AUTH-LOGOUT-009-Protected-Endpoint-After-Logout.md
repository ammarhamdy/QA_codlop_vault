---
tc_id: TC-API-DASH-AUTH-LOGOUT-009
title: Protected Endpoint After Logout
priority:
  - High
status:
  - completed
type:
  - API
linked_requirement: REQ-DASH-AUTH-002
tags:
  - test-case
run_result: pass
---

# Test Data
| Field            | Value                         |
| ---------------- | ----------------------------- |
| URL              | /api/dashboard/{protected}   |
| Method           | POST                          |
| Authorization    | Bearer {token_after_logout}   |

# Preconditions
- The admin logged out successfully using the token.
- The token is the one returned by login.

# Steps
1. Logout successfully using the token.
2. Send a POST request to a protected dashboard endpoint using the same token.
3. Set header `Accept: application/json`.
4. Submit the request.
5. Observe the response.

# Expected Result
- Access to the protected endpoint is denied.
- HTTP status code is `401`.
- `status` is `error`.
- The admin must re-authenticate.

# Notes
- Applies to AC-03 — Protected Resource After Logout.

# Attachments
```sh
#!/usr/bin/env bash

# Test Case: TC-API-DASH-AUTH-LOGOUT-001 - Successful Logout
TITLE="TC-API-DASH-AUTH-LOGOUT-001: Successful Logout"
echo "=================================================="
echo "Running: $TITLE"
echo "=================================================="

# 1. Login to get a valid token
LOGIN_RES=$(curl --silent --location --request POST 'https://seyanty.info/api/dashboard/login' \
  --header 'Accept: application/json' \
  --header 'Content-Type: application/json' \
  --data '{
      "email_or_name": "admin-1@mail.com",
      "password": "Admin#123"
  }')

TOKEN=$(echo "$LOGIN_RES" | jq -r '.data.token // .token // .access_token // empty')

# 2. Execute Logout Request
RESPONSE=$(curl --silent --write-out "\nHTTP_STATUS:%{http_code}" --location --request POST 'https://seyanty.info/api/dashboard/logout' \
  --header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
  --header 'Accept: application/json' \
  --header 'Host: seyanty.info' \
  --header 'Content-Type: application/xml' \
  --header 'Connection: keep-alive' \
  --header "Authorization: Bearer -\'$TOKEN")

HTTP_BODY=$(echo "$RESPONSE" | sed -e '$d')
HTTP_STATUS=$(echo "$RESPONSE" | tail -n1 | sed -e 's/HTTP_STATUS://')

# 3. Execute Profile Request
RESPONSE=$(curl --silent --location --request GET 'https://seyanty.info/api/dashboard/profile' \
  --header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
  --header 'Accept: application/json' \
  --header "Authorization: Bearer $TOKEN")

echo -e "\nGET-Profile"
echo "${RESPONSE}"

echo "Result:"
echo "Status Code: $HTTP_STATUS"
echo "Response Body:"
echo "$HTTP_BODY" | jq .
echo "=================================================="
```