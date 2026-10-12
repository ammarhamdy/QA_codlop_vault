---
tc_id: TC-API-DASH-AUTH-LOGOUT-004
title: Missing Authentication
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
| Field            | Value                  |
| ---------------- | ---------------------- |
| URL              | /api/dashboard/logout |
| Method           | POST                   |
| Authorization    | (header absent)        |

# Preconditions
- The admin is not logged in.

# Steps
1. Send a POST request to `https://seyanty.info/api/dashboard/logout`.
2. Set header `Accept: application/json`.
3. Omit the `Authorization` header entirely.
4. Submit the request.
5. Observe the response.

# Expected Result
- The request is rejected.
- HTTP status code is `401`.
- `status` is `error`.
- An error message indicates the request is unauthenticated.

# Notes
- Applies to AC-03 — Protected Resource After Logout.

# Attachments
```sh
#!/usr/bin/env bash

# Test Case: TC-API-DASH-AUTH-LOGOUT-004 - Missing Authentication
TITLE="TC-API-DASH-AUTH-LOGOUT-004: Missing Authentication"
echo "=================================================="
echo "Running: $TITLE"
echo "=================================================="

# Send Logout request completely omitting the Authorization header
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