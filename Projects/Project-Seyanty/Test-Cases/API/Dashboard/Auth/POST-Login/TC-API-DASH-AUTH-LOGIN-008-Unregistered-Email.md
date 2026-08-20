---
tc_id: TC-API-DASH-AUTH-LOGIN-008
title: Unregistered Email
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
| Field         | Value                 |
| ------------- | --------------------- |
| email_or_name | unknown@mail.com      |
| password      | Admin#123             |

# Preconditions
- The dashboard login endpoint is reachable.
- The email `unknown@mail.com` is not registered.

# Steps
1. Send a POST request to `https://seyanty.info/api/dashboard/login`.
2. Set header `Accept: application/json`.
3. Send `email_or_name` as an unregistered email and `password` as `Admin#123`.
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

# Test Case: TC-API-DASH-AUTH-LOGIN-008 - Unregistered Email
TITLE="TC-API-DASH-AUTH-LOGIN-008: Unregistered Email"
echo "=================================================="
echo "Running: $TITLE"
echo "=================================================="

RESPONSE=$(curl --silent --write-out "\nHTTP_STATUS:%{http_code}" --location --request POST 'https://seyanty.info/api/dashboard/login' \
  --header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
  --header 'Accept: application/json' \
  --header 'Content-Type: application/json' \
  --header 'Connection: keep-alive' \
  --data '{
      "email_or_name": "nonexistent_user_999@mail.com",
      "password": "Admin#123"
  }')

HTTP_BODY=$(echo "$RESPONSE" | sed -e '$d')
HTTP_STATUS=$(echo "$RESPONSE" | tail -n1 | sed -e 's/HTTP_STATUS://')

echo "Result:"
echo "Status Code: $HTTP_STATUS"
echo "Response Body:"
echo "$HTTP_BODY" | jq .
echo "=================================================="
```