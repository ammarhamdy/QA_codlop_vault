---
tc_id: TC-API-DASH-AUTH-UPDATE-PROFILE-008
title: Invalid Email Format
priority:
  - High
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
| Field         | Value                   |
| ------------- | ----------------------- |
| URL           | /api/dashboard/profile |
| Method        | POST                    |
| Authorization | Bearer {valid_token}    |
| name          | admin-1                 |
| email         | not-an-email            |

# Preconditions
- An active admin session token is available.

# Steps
1. Send a POST request to `https://seyanty.info/api/dashboard/profile`.
2. Set header `Accept: application/json`.
3. Set header `Authorization: Bearer {valid_token}`.
4. Send `email` with an invalid format.
5. Submit the request.
6. Observe the response.

# Expected Result
- The request fails with an error response.
- HTTP status code is `422`.
- `status` is `error`.
- A validation error message indicates the email format is invalid.

# Notes
- Email must match a valid email format.

# Attachments
```sh
#!/usr/bin/env bash

# Test Case: TC-API-DASH-AUTH-UPDATE-PROFILE-008 - Invalid Email Format
TITLE="TC-API-DASH-AUTH-UPDATE-PROFILE-008: Invalid Email Format"
echo "=================================================="
echo "Running: $TITLE"
echo "=================================================="

# 1. Login to get a valid bearer token
LOGIN_RES=$(curl --silent --location --request POST 'https://seyanty.info/api/dashboard/login' \
  --header 'Accept: application/json' \
  --header 'Content-Type: application/json' \
  --data '{
      "email_or_name": "admin-1@mail.com",
      "password": "Admin#123"
  }')

TOKEN=$(echo "$LOGIN_RES" | jq -r '.data.token // .token // .access_token // empty')

# 2. List of various invalid email formats to test
INVALID_EMAILS=(
  "plainaddress"
  "@missingusername.com"
  "username@.com"
  "username@com"
  "username@domain..com"
  "username@domain.com (extra text)"
  "username@domain,com"
  "username space@domain.com"
  "username@domain com"
  "username#example.com"
  "username@@example.com"
  ".username@example.com"
  "username.@example.com"
)

# 3. Iterate through each invalid email format and execute update
for EMAIL in "${INVALID_EMAILS[@]}"; do
  echo "--------------------------------------------------"
  echo "Testing invalid email payload: '$EMAIL'"
  
  RESPONSE=$(curl --silent --write-out "\nHTTP_STATUS:%{http_code}" --location --request POST 'https://seyanty.info/api/dashboard/update-profile' \
    --header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
    --header 'Accept: application/json' \
    --header 'Host: seyanty.info' \
    --header 'Connection: keep-alive' \
    --header "Authorization: Bearer $TOKEN" \
    --form 'name="admin"' \
    --form "email=\"$EMAIL\"" \
    --form 'password="Admin#123"')

  HTTP_BODY=$(echo "$RESPONSE" | sed -e '$d')
  HTTP_STATUS=$(echo "$RESPONSE" | tail -n1 | sed -e 's/HTTP_STATUS://')

  echo "Status Code: $HTTP_STATUS"
  echo "Response Body:"
  echo "$HTTP_BODY" | jq .
done

echo "=================================================="
```