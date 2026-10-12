---
tc_id: TC-API-DASH-AUTH-LOGIN-009
title: Incorrect Password
priority:
  - High
status:
  - completed
type:
  - API
linked_requirement: REQ-API-DASH-AUTH-LOGIN
tags:
  - test-case
run_result: pass
---

# Test Data
| Field         | Value            |
| ------------- | ---------------- |
| email_or_name | admin-1@mail.com |
| password      | WrongPass123     |

# Preconditions
- The dashboard login endpoint is reachable.
- The email `admin-1@mail.com` is registered.

# Steps
1. Send a POST request to `https://seyanty.info/api/dashboard/login`.
2. Set header `Accept: application/json`.
3. Send a registered email with an incorrect password.
4. Submit the request.
5. Observe the response.

# Expected Result
- The request fails with an error response.
- HTTP status code is `401`.
- `status` is `error`.
- `message` is `البيانات خاطئه`.
- `data` is `null`.

# Notes
- Applies to the INVALID login scenario.

# Attachments
```sh
#!/usr/bin/env bash

# Test Case: TC-API-DASH-AUTH-LOGIN-009 - Incorrect Password
TITLE="TC-API-DASH-AUTH-LOGIN-009: Incorrect Password"
echo "=================================================="
echo "Running: $TITLE"
echo "=================================================="

RESPONSE=$(curl --silent --write-out "\nHTTP_STATUS:%{http_code}" --location --request POST 'https://seyanty.info/api/dashboard/login' \
  --header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
  --header 'Accept: application/json' \
  --header 'Content-Type: application/json' \
  --header 'Connection: keep-alive' \
  --data '{
      "email_or_name": "admin-1@mail.com",
      "password": "WrongPassword#999"
  }')

HTTP_BODY=$(echo "$RESPONSE" | sed -e '$d')
HTTP_STATUS=$(echo "$RESPONSE" | tail -n1 | sed -e 's/HTTP_STATUS://')

echo "Result:"
echo "Status Code: $HTTP_STATUS"
echo "Response Body:"
echo "$HTTP_BODY" | jq .
echo "=================================================="
```