---
tc_id: TC-API-DASH-AUTH-LOGIN-007
title: Invalid Password Format
priority:
  - Medium
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
| password      | 123              |

# Preconditions
- The dashboard login endpoint is reachable.

# Steps
1. Send a POST request to `https://seyanty.info/api/dashboard/login`.
2. Set header `Accept: application/json`.
3. Send `email_or_name` as `admin-1@mail.com` and `password` with a value that does not satisfy the password format requirements.
4. Submit the request.
5. Observe the response.

# Expected Result
- The request fails with an error response.
- `status` is `error`.
- A validation error message indicates the password format is invalid.

# Notes
- Confirm the password format rules with the requirements (length, allowed characters).

# Attachments
```sh
#!/usr/bin/env bash

# Test Case: TC-API-DASH-AUTH-LOGIN-007 - Invalid Password
TITLE="TC-API-DASH-AUTH-LOGIN-007: Invalid Password"
echo "=================================================="
echo "Running: $TITLE"
echo "=================================================="

# Sending a password that violates validation rules (e.g. too short / bad format)
RESPONSE=$(curl --silent --write-out "\nHTTP_STATUS:%{http_code}" --location --request POST 'https://seyanty.info/api/dashboard/login' \
  --header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
  --header 'Accept: application/json' \
  --header 'Content-Type: application/json' \
  --header 'Connection: keep-alive' \
  --data '{
      "email_or_name": "admin-1@mail.com",
      "password": "123"
  }')

HTTP_BODY=$(echo "$RESPONSE" | sed -e '$d')
HTTP_STATUS=$(echo "$RESPONSE" | tail -n1 | sed -e 's/HTTP_STATUS://')

echo "Result:"
echo "Status Code: $HTTP_STATUS"
echo "Response Body:"
echo "$HTTP_BODY" | jq .
echo "=================================================="
```