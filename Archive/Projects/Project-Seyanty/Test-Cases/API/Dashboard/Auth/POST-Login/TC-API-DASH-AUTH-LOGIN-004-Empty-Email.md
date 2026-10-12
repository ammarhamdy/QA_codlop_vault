---
tc_id: TC-API-DASH-AUTH-LOGIN-004
title: Empty Email
priority:
  - High
status:
  - completed
type:
  - API
linked_requirement: REQ-API-DASH-AUTH-LOGIN
tags:
  - test-case
run_result: fail
---

# Test Data
| Field         | Value     |
| ------------- | --------- |
| email_or_name |           |
| password      | Admin#123 |

# Preconditions
- The dashboard login endpoint is reachable.

# Steps
1. Send a POST request to `https://seyanty.info/api/dashboard/login`.
2. Set header `Accept: application/json`.
3. Send `email_or_name` as an empty string and `password` as `Admin#123`.
4. Submit the request.
5. Observe the response.

# Expected Result
- The request fails with an error response.
- HTTP status code is `422` or `401`.
- `status` is `error`.
- A validation error message indicates that `email_or_name` is required.

# Notes
- Empty values must be treated as missing.

# Attachments
```sh
#!/usr/bin/env bash

# Test Case: TC-API-DASH-AUTH-LOGIN-004 - Empty Email
TITLE="TC-API-DASH-AUTH-LOGIN-004: Empty Email"
echo "=================================================="
echo "Running: $TITLE"
echo "=================================================="

RESPONSE=$(curl --silent --write-out "\nHTTP_STATUS:%{http_code}" --location --request POST 'https://seyanty.info/api/dashboard/login' \
  --header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
  --header 'Accept: application/json' \
  --header 'Content-Type: application/json' \
  --header 'Connection: keep-alive' \
  --data '{
      "email_or_name": "",
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