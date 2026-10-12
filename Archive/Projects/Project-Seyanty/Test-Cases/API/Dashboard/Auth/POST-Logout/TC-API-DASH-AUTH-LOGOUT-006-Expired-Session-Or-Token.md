---
tc_id: TC-API-DASH-AUTH-LOGOUT-006
title: Expired Session Or Token
priority:
  - Medium
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
| Field            | Value                       |
| ---------------- | --------------------------- |
| URL              | /api/dashboard/logout      |
| Method           | POST                        |
| Authorization    | Bearer {expired_token}      |

# Preconditions
- A token whose `exp` claim has already passed.

# Steps
1. Send a POST request to `https://seyanty.info/api/dashboard/logout`.
2. Set header `Accept: application/json`.
3. Set header `Authorization: Bearer {expired_token}`.
4. Submit the request.
5. Observe the response.

# Expected Result
- The request is rejected.
- HTTP status code is `401`.
- `status` is `error`.
- An error message indicates the session or token has expired.

# Notes
- Applies to AC-05 — Session Termination.

# Attachments
```sh
#!/usr/bin/env bash

# Test Case: TC-API-DASH-AUTH-LOGOUT-005 - Invalid Authentication
TITLE="TC-API-DASH-AUTH-LOGOUT-005: Invalid Authentication"
echo "=================================================="
echo "Running: $TITLE"
echo "=================================================="

# Execute Logout with an invalid/malformed token
RESPONSE=$(curl --silent --write-out "\nHTTP_STATUS:%{http_code}" --location --request POST 'https://seyanty.info/api/dashboard/logout' \
  --header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
  --header 'Accept: application/json' \
  --header 'Host: seyanty.info' \
  --header 'Connection: keep-alive' \
  --header 'Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL3NleWFudHkuaW5mby9hcGkvZGFzaGJvYXJkL2xvZ2luIiwiaWF0IjoxNzg3MTIyODE2LCJleHAiOjE3ODgzMzI0MTYsIm5iZiI6MTc4NzEyMjgxNiwianRpIjoiandKVmk3Zjk4ZzFuZ3dBZSIsInN1YiI6IjE5IiwicHJ2IjoiZGY4ODNkYjk3YmQwNWVmOGZmODUwODJkNjg2YzQ1ZTgzMmU1OTNhOSJ9.yeXnwvHiBW1IvxZcYkBoohweBzUR1_LYPCILLiCHDGU')

HTTP_BODY=$(echo "$RESPONSE" | sed -e '$d')
HTTP_STATUS=$(echo "$RESPONSE" | tail -n1 | sed -e 's/HTTP_STATUS://')

echo "Result:"
echo "Status Code: $HTTP_STATUS"
echo "Response Body:"
echo "$HTTP_BODY" | jq .
echo "=================================================="
```