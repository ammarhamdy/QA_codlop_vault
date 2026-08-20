---
tc_id: TC-API-DASH-AUTH-PROFILE-007
title: Invalid HTTP Method
priority:
  - Medium
status:
  - completed
type:
  - API
linked_requirement: REQ-API-DASH-AUTH-PROFILE
tags:
  - test-case
run_result: pass
---

# Test Data
| Field         | Value                       |
| ------------- | --------------------------- |
| URL           | /api/dashboard/profile     |
| Method        | POST, PUT, DELETE           |
| Authorization | Bearer {valid_token}        |

# Preconditions
- An active admin session token is available.

# Steps
1. Send a request to `https://seyanty.info/api/dashboard/profile` using POST, PUT, or DELETE instead of GET.
2. Set header `Accept: application/json`.
3. Set header `Authorization: Bearer {valid_token}`.
4. Submit the request.
5. Observe the response.

# Expected Result
- The request is rejected.
- HTTP status code is `405 Method Not Allowed`.
- `status` is `error`.

# Notes
- The profile endpoint must accept GET only.

# Attachments
```sh
#!/usr/bin/env bash

# Test Case: TC-API-DASH-AUTH-PROFILE-007 - Invalid HTTP Method
TITLE="TC-API-DASH-AUTH-PROFILE-007: Invalid HTTP Method"
echo "=================================================="
echo "Running: $TITLE"
echo "=================================================="

# 1. Authenticate to obtain token
LOGIN_RES=$(curl --silent --location --request POST 'https://seyanty.info/api/dashboard/login' \
  --header 'Accept: application/json' \
  --header 'Content-Type: application/json' \
  --data '{
      "email_or_name": "admin-1@mail.com",
      "password": "Admin#123"
  }')

TOKEN=$(echo "$LOGIN_RES" | grep -o '"token":"[^"]*' | cut -d'"' -f4)
if [ -z "$TOKEN" ]; then
  TOKEN=$(echo "$LOGIN_RES" | grep -o '"access_token":"[^"]*' | cut -d'"' -f4)
fi

# 2. Send DELETE request (invalid method for profile view)
RESPONSE=$(curl --silent --write-out "\nHTTP_STATUS:%{http_code}" --location --request DELETE 'https://seyanty.info/api/dashboard/profile' \
  --header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
  --header 'Accept: application/json' \
  --header 'Connection: keep-alive' \
  --header "Authorization: Bearer $TOKEN")

HTTP_BODY=$(echo "$RESPONSE" | sed -e '$d')
HTTP_STATUS=$(echo "$RESPONSE" | tail -n1 | sed -e 's/HTTP_STATUS://')

echo "Result:"
echo "Status Code: $HTTP_STATUS"
echo "Response Body:"
echo "$HTTP_BODY" | jq .


# 3. Send PUT request (invalid method for profile view)
RESPONSE=$(curl --silent --write-out "\nHTTP_STATUS:%{http_code}" --location --request PUT 'https://seyanty.info/api/dashboard/profile' \
  --header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
  --header 'Accept: application/json' \
  --header 'Connection: keep-alive' \
  --header "Authorization: Bearer $TOKEN")

HTTP_BODY=$(echo "$RESPONSE" | sed -e '$d')
HTTP_STATUS=$(echo "$RESPONSE" | tail -n1 | sed -e 's/HTTP_STATUS://')

echo "Result:"
echo "Status Code: $HTTP_STATUS"
echo "Response Body:"
echo "$HTTP_BODY" | jq .


# 3. Send POST request (invalid method for profile view)
RESPONSE=$(curl --silent --write-out "\nHTTP_STATUS:%{http_code}" --location --request POST 'https://seyanty.info/api/dashboard/profile' \
  --header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
  --header 'Accept: application/json' \
  --header 'Connection: keep-alive' \
  --header "Authorization: Bearer $TOKEN")

HTTP_BODY=$(echo "$RESPONSE" | sed -e '$d')
HTTP_STATUS=$(echo "$RESPONSE" | tail -n1 | sed -e 's/HTTP_STATUS://')

echo "Result:"
echo "Status Code: $HTTP_STATUS"
echo "Response Body:"
echo "$HTTP_BODY" | jq .

echo "=================================================="
```