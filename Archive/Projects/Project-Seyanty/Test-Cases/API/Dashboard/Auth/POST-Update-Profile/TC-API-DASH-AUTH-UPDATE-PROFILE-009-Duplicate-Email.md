---
tc_id: TC-API-DASH-AUTH-UPDATE-PROFILE-009
title: Duplicate Email
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
| Field         | Value                    |
| ------------- | ------------------------ |
| URL           | /api/dashboard/profile  |
| Method        | POST                     |
| Authorization | Bearer {valid_token}     |
| name          | admin-1                  |
| email         | other-admin@mail.com     |

# Preconditions
- An active admin session token is available.
- `other-admin@mail.com` is already used by another account.

# Steps
1. Send a POST request to `https://seyanty.info/api/dashboard/profile`.
2. Set header `Accept: application/json`.
3. Set header `Authorization: Bearer {valid_token}`.
4. Send an email already used by another account.
5. Submit the request.
6. Observe the response.

# Expected Result
- The request fails with an error response.
- HTTP status code is `422`.
- `status` is `error`.
- A validation error message indicates the email is already taken.

# Notes
- Emails must be unique across accounts.

# Attachments
```sh
#!/usr/bin/env bash

# Test Case: TC-API-DASH-AUTH-UPDATE-PROFILE-009 - Duplicate Email
TITLE="TC-API-DASH-AUTH-UPDATE-PROFILE-009: Duplicate Email"
echo "=================================================="
echo "Running: $TITLE"
echo "=================================================="

# 1. Login to get a valid bearer token for the target admin account
LOGIN_RES=$(curl --silent --location --request POST 'https://seyanty.info/api/dashboard/login' \
  --header 'Accept: application/json' \
  --header 'Content-Type: application/json' \
  --data '{
      "email_or_name": "admin-1@mail.com",
      "password": "Admin#123"
  }')

TOKEN=$(echo "$LOGIN_RES" | jq -r '.data.token // .token // .access_token // empty')

# 2. Attempt to update profile using an email that already belongs to another existing account
DUPLICATE_EMAIL="superadmin@seyanty.info"

RESPONSE=$(curl --silent --write-out "\nHTTP_STATUS:%{http_code}" --location --request POST 'https://seyanty.info/api/dashboard/update-profile' \
  --header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
  --header 'Accept: application/json' \
  --header 'Host: seyanty.info' \
  --header 'Connection: keep-alive' \
  --header "Authorization: Bearer $TOKEN" \
  --form 'name="admin"' \
  --form "email=\"$DUPLICATE_EMAIL\"" \
  --form 'password="Admin#123"')

HTTP_BODY=$(echo "$RESPONSE" | sed -e '$d')
HTTP_STATUS=$(echo "$RESPONSE" | tail -n1 | sed -e 's/HTTP_STATUS://')

echo "Result:"
echo "Status Code: $HTTP_STATUS"
echo "Response Body:"
echo "$HTTP_BODY" | jq .
echo "=================================================="
```