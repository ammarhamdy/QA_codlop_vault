---
tc_id: TC-API-DASH-AUTH-LOGOUT-002
title: Authenticated User Logout
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
| Field            | Value                       |
| ---------------- | --------------------------- |
| URL              | /api/dashboard/logout      |
| Method           | POST                        |
| Authorization    | Bearer {valid_token}        |

# Preconditions
- The admin is authenticated with a valid token.

# Steps
1. Send a POST request to `https://seyanty.info/api/dashboard/logout`.
2. Set header `Accept: application/json`.
3. Set header `Authorization: Bearer {valid_token}`.
4. Submit the request.
5. Observe the response.

# Expected Result
- The logout request succeeds for an authenticated user.
- `status` is `success`.
- The session is terminated.

# Notes
- Applies to AC-01 — Logout Availability.

# Attachments
```sh
#!/usr/bin/env bash

# Test Case: TC-API-DASH-AUTH-LOGOUT-002 - Authenticated User Logout
TITLE="TC-API-DASH-AUTH-LOGOUT-002: Authenticated User Logout"
echo "=================================================="
echo "Running: $TITLE"
echo "=================================================="

# 1. Login to obtain an active session token
LOGIN_RES=$(curl --silent --location --request POST 'https://seyanty.info/api/dashboard/login' \
  --header 'Accept: application/json' \
  --header 'Content-Type: application/json' \
  --data '{
      "email_or_name": "admin-1@mail.com",
      "password": "Admin#123"
  }')

TOKEN=$(echo "$LOGIN_RES" | jq -r '.data.token // .token // .access_token // empty')

# 2. Perform Logout for the authenticated user
RESPONSE=$(curl --silent --write-out "\nHTTP_STATUS:%{http_code}" --location --request POST 'https://seyanty.info/api/dashboard/logout' \
  --header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
  --header 'Accept: application/json' \
  --header 'Host: seyanty.info' \
  --header 'Connection: keep-alive' \
  --header "Authorization: Bearer $TOKEN")

HTTP_BODY=$(echo "$RESPONSE" | sed -e '$d')
HTTP_STATUS=$(echo "$RESPONSE" | tail -n1 | sed -e 's/HTTP_STATUS://')

echo "Result:"
echo "Status Code: $HTTP_STATUS"
echo "Response Body:"
echo "$HTTP_BODY" | jq .
echo "=================================================="
```