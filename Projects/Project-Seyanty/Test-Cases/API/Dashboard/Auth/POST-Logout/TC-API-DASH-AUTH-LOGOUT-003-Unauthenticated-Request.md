---
tc_id: TC-API-DASH-AUTH-LOGOUT-003
title: Unauthenticated Request
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
| Field         | Value                  |
| ------------- | ---------------------- |
| URL           | /api/dashboard/logout |
| Method        | POST                   |
| Authorization | (not set)              |

# Preconditions
- No authentication token is available.

# Steps
1. Send a POST request to `https://seyanty.info/api/dashboard/logout` without an `Authorization` header.
2. Set header `Accept: application/json`.
3. Submit the request.
4. Observe the response.

# Expected Result
- The request is rejected with an authentication error.
- HTTP status code is `401`.
- `status` is `error`.

# Notes
- The logout endpoint must require authentication.

# Attachments
```sh
#!/usr/bin/env bash

# Test Case: TC-API-DASH-AUTH-LOGOUT-003 - Unauthenticated Request
TITLE="TC-API-DASH-AUTH-LOGOUT-003: Unauthenticated Request"
echo "=================================================="
echo "Running: $TITLE"
echo "=================================================="

# Execute Logout request without Authorization header
RESPONSE=$(curl --silent --write-out "\nHTTP_STATUS:%{http_code}" --location --request POST 'https://seyanty.info/api/dashboard/logout' \
  --header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
  --header 'Accept: application/json' \
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