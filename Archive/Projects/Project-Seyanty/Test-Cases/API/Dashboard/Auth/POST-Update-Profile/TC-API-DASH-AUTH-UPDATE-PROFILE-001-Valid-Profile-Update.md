---
tc_id: TC-API-DASH-AUTH-UPDATE-PROFILE-001
title: Valid Profile Update
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
| email         | admin-1@mail.com         |
| phone         | +201000000000            |

# Preconditions
- An active admin session token is obtained via the login endpoint.

# Steps
1. Send a POST request to `https://seyanty.info/api/dashboard/profile`.
2. Set header `Accept: application/json`.
3. Set header `Authorization: Bearer {valid_token}`.
4. Send valid profile fields (`name`, `email`, `phone`).
5. Submit the request.
6. Observe the response.

# Expected Result
- HTTP status code is `200`.
- `status` is `success`.
- A confirmation message indicates the profile was updated.

# Notes
- Applies to the VALID profile update scenario.

# Attachments
```sh
#!/usr/bin/env bash

# Test Case: TC-API-DASH-AUTH-UPDATE-PROFILE-001 - Valid Profile Update
TITLE="TC-API-DASH-AUTH-UPDATE-PROFILE-001: Valid Profile Update"
echo "=================================================="
echo "Running: $TITLE"
echo "=================================================="

# 1. Login to get a valid token
LOGIN_RES=$(curl --silent --location --request POST 'https://seyanty.info/api/dashboard/login' \
  --header 'Accept: application/json' \
  --header 'Content-Type: application/json' \
  --data '{
      "email_or_name": "admin-1@mail.com",
      "password": "Admin#123"
  }')

TOKEN=$(echo "$LOGIN_RES" | jq -r '.data.token // .token // .access_token // empty')

# 2. Create a temporary image file for upload testing
TMP_PHOTO=$(mktemp --suffix=.jpg)
convert -size 100x100 xc:white "$TMP_PHOTO" 2>/dev/null || echo "fake_image_bytes" > "$TMP_PHOTO"

# 3. Send valid update-profile request (multipart/form-data)
RESPONSE=$(curl --silent --write-out "\nHTTP_STATUS:%{http_code}" --location --request POST 'https://seyanty.info/api/dashboard/update-profile' \
  --header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
  --header 'Accept: application/json' \
  --header 'Host: seyanty.info' \
  --header 'Connection: keep-alive' \
  --header "Authorization: Bearer $TOKEN" \
  --form 'name="admin"' \
  --form 'email="admin-1@mail.com"' \
  --form 'password="Admin#123"' \
  --form "photo=@${TMP_PHOTO}")

rm -f "$TMP_PHOTO"

HTTP_BODY=$(echo "$RESPONSE" | sed -e '$d')
HTTP_STATUS=$(echo "$RESPONSE" | tail -n1 | sed -e 's/HTTP_STATUS://')

echo "Result:"
echo "Status Code: $HTTP_STATUS"
echo "Response Body:"
echo "$HTTP_BODY" | jq .
echo "=================================================="
```