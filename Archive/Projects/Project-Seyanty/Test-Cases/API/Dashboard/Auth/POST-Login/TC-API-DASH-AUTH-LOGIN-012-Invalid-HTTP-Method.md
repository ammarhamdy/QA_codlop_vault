---
tc_id: TC-API-DASH-AUTH-LOGIN-012
title: Invalid HTTP Method
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
| Field | Value               |
| ----- | ------------------- |
| URL   | /api/dashboard/login |
| Method | GET, PUT, DELETE    |

# Preconditions
- The dashboard login endpoint is reachable.

# Steps
1. Send a request to `https://seyanty.info/api/dashboard/login` using GET, PUT, or DELETE instead of POST.
2. Include `Accept: application/json`.
3. Submit the request.
4. Observe the response.

# Expected Result
- The request is rejected.
- HTTP status code is `405 Method Not Allowed`.
- `status` is `error`.

# Notes
- The login endpoint must accept POST only.

# Attachments
```sh
#!/usr/bin/env bash

# Test Case: TC-API-DASH-AUTH-LOGIN-012 - Invalid HTTP Method
TITLE="TC-API-DASH-AUTH-LOGIN-012: Invalid HTTP Method"
echo "=================================================="
echo "Running: $TITLE"
echo "=================================================="

# Sending a GET request to a POST-only login endpoint
RESPONSE=$(curl --silent --write-out "\nHTTP_STATUS:%{http_code}" --location --request GET 'https://seyanty.info/api/dashboard/login' \
  --header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
  --header 'Accept: application/json' \
  --header 'Connection: keep-alive')

HTTP_BODY=$(echo "$RESPONSE" | sed -e '$d')
HTTP_STATUS=$(echo "$RESPONSE" | tail -n1 | sed -e 's/HTTP_STATUS://')

echo "Result:"
echo "Status Code: $HTTP_STATUS"
echo "Response Body:"
echo "$HTTP_BODY" | jq .
echo "=================================================="
```