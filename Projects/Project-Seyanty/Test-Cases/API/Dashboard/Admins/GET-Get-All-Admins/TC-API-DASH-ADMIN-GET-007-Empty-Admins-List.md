---
tc_id: TC-API-DASH-ADMIN-GET-007
title: Get all admins when the admins list is empty
priority:
  - Medium
status:
  - completed
type:
  - API
linked_requirement: REQ-API-DASH-ADMIN-GET
tags:
  - test-case
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `GET https://seyanty.info/api/dashboard/admins` |
| Content-Type | `application/json` |
| Authorization | `Bearer <valid_token>` |
| Query Parameters | `pagination=on&page=1&limit=10` |

# Preconditions
- User is logged in to the dashboard as an admin with a valid token.
- No admin records exist in the system (empty database state).

# Steps
1. Send a `GET` request to `https://seyanty.info/api/dashboard/admins?pagination=on&page=1&limit=10`.
2. Set header `Authorization: Bearer <valid_token>`.
3. Set header `Content-Type: application/json`.
4. Send the request and capture the response.

# Expected Result
- The API returns HTTP status code `200 OK`.
- `data` is an empty array `[]`.
- `pagination.total` is `0`, `isEmpty` is `true`, and `hasPages` is `false`.
- The response does not fail or return an error.

# Notes
- Ensure the database is restored with data after this test to avoid breaking dependent test cases.

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
      "email_or_name": "admin@admin.com",
      "password": "Admin#123"
  }')

TOKEN=$(echo "$LOGIN_RES" | jq -r '.data.token // .token // .access_token // empty')
echo $TOKEN



# 2. List admins
RESPONSE=$(curl --silent --write-out "\nHTTP_STATUS:%{http_code}" --location --request GET 'https://seyanty.info/api/dashboard/admins' \
--header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
--header "Authorization: Bearer $TOKEN" \
--header 'Accept: */*' \
--header 'Host: seyanty.info' \
--header 'Connection: keep-alive')

HTTP_BODY=$(echo "$RESPONSE" | sed -e '$d')
HTTP_STATUS=$(echo "$RESPONSE" | tail -n1 | sed -e 's/HTTP_STATUS://')

echo "Result:"
echo "Status Code: $HTTP_STATUS"
echo "Response Body:"
echo "$HTTP_BODY" | jq .
echo "=================================================="
```
