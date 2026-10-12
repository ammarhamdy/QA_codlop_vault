---
tc_id: TC-API-DASH-AUTH-LOGIN-014
title: Invalid Content-Type
priority:
  - Medium
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
| Field         | Value            |
| ------------- | ---------------- |
| email_or_name | admin-1@mail.com |
| password      | Admin#123        |
| Content-Type  | application/json |

# Preconditions
- The dashboard login endpoint is reachable.

# Steps
1. Send a POST request to `https://seyanty.info/api/dashboard/login`.
2. Set `Accept: application/json` and `Content-Type: application/json`.
3. Send `email_or_name` and `password` as JSON body.
4. Submit the request.
5. Observe the response.

# Expected Result
- The request fails if the endpoint does not accept JSON payloads.
- `status` is `error`.

# Notes
- The documented payload uses `multipart/form-data` (`--form`).

# Attachments
```sh
#!/usr/bin/env bash

# Test Case: TC-API-DASH-AUTH-LOGIN-014 - Invalid Content-Type
TITLE="TC-API-DASH-AUTH-LOGIN-014: Invalid Content-Type"
echo "=================================================="
echo "Running: $TITLE"
echo "=================================================="

# Sending request with an invalid/unsupported Content-Type header
RESPONSE=$(curl --silent --write-out "\nHTTP_STATUS:%{http_code}" --location --request POST 'https://seyanty.info/api/dashboard/login' \
  --header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
  --header 'Accept: application/json' \
  --header 'Content-Type: text/plain' \
  --header 'Connection: keep-alive' \
  --data '{
      "email_or_name": "admin-1@mail.com",
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