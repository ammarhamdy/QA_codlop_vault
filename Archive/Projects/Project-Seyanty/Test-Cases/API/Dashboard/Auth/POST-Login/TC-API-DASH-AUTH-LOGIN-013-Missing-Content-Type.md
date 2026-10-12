---
tc_id: TC-API-DASH-AUTH-LOGIN-013
title: Missing Content-Type
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
| Content-Type  | (not set)        |

# Preconditions
- The dashboard login endpoint is reachable.

# Steps
1. Send a POST request to `https://seyanty.info/api/dashboard/login` with `Accept: application/json` only.
2. Send `email_or_name` and `password` without a `Content-Type` header.
3. Submit the request.
4. Observe the response.

# Expected Result
- The request is either rejected with an error response or the fields are not parsed.
- `status` is `error`.

# Notes
- A `Content-Type` header is expected by the endpoint.

# Attachments
```sh
#!/usr/bin/env bash

# Test Case: TC-API-DASH-AUTH-LOGIN-013 - Missing Content-Type
TITLE="TC-API-DASH-AUTH-LOGIN-013: Missing Content-Type"
echo "=================================================="
echo "Running: $TITLE"
echo "=================================================="

# Sending request with payload but omitting the Content-Type header

##
# the'Content-Type: application/json' is missing
##

RESPONSE=$(curl --silent --write-out "\nHTTP_STATUS:%{http_code}" --location --request POST 'https://seyanty.info/api/dashboard/login' \
  --header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
  --header 'Accept: application/json' \
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