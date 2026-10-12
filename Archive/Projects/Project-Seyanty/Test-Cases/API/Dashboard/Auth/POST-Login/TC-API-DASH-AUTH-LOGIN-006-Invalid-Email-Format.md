---
tc_id: TC-API-DASH-AUTH-LOGIN-006
title: Invalid Email Format
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
| Field         | Value      |
| ------------- | ---------- |
| email_or_name | not-an-email |
| password      | Admin#123  |

# Preconditions
- The dashboard login endpoint is reachable.

# Steps
1. Send a POST request to `https://seyanty.info/api/dashboard/login`.
2. Set header `Accept: application/json`.
3. Send `email_or_name` with an invalid email format and `password` as `Admin#123`.
4. Submit the request.
5. Observe the response.

# Expected Result
- The request fails with an error response.
- `status` is `error`.
- A validation error message indicates the email format is invalid.

# Notes
- `email_or_name` must be a valid email address or an existing name.

# Attachments
```sh
#!/usr/bin/env bash

# Test Case: TC-API-DASH-AUTH-LOGIN-006 - Invalid Email Format
TITLE="TC-API-DASH-AUTH-LOGIN-006: Invalid Email Format"
echo "=================================================="
echo "Running: $TITLE"
echo "=================================================="

RESPONSE=$(curl --silent --write-out "\nHTTP_STATUS:%{http_code}" --location --request POST 'https://seyanty.info/api/dashboard/login' \
  --header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
  --header 'Accept: application/json' \
  --header 'Content-Type: application/json' \
  --header 'Connection: keep-alive' \
  --data '{
      "email_or_name": "invalid-email-format",
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