---
tc_id: TC-API-DASH-AUTH-UPDATE-PROFILE-015
title: Unauthenticated Request
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
| Authorization | (not set)               |

# Preconditions
- No authentication is provided.

# Steps
1. Send a POST request to `https://seyanty.info/api/dashboard/profile` without an `Authorization` header.
2. Set header `Accept: application/json`.
3. Submit the request.
4. Observe the response.

# Expected Result
- The request is rejected with an authentication error.
- HTTP status code is `401`.
- `status` is `error`.

# Notes
- Unauthenticated profile updates are denied.

# Attachments
```sh
#!/usr/bin/env bash

# Test Case: TC-API-DASH-AUTH-UPDATE-PROFILE-015 - Unauthenticated Request
TITLE="TC-API-DASH-AUTH-UPDATE-PROFILE-015: Unauthenticated Request"
echo "=================================================="
echo "Running: $TITLE"
echo "=================================================="

# 1. Create a minimal valid 1x1 JPEG using base64
TEMP_PHOTO="/tmp/test_profile_photo.jpg"
if [ ! -f "$TEMP_PHOTO" ]; then
  echo "/9j/4AAQSkZJRgABAQEASABIAAD/2wBDAP//////////////////////////////////////////////////////////////////////////////////////wgALCAABAAEBAREA/8QAFBABAAAAAAAAAAAAAAAAAAAAAP/aAAgBAQABPxA=" | base64 -d > "$TEMP_PHOTO"
fi

# 2. Execute Update Request without any Authorization header
RESPONSE=$(curl --silent --write-out "\nHTTP_STATUS:%{http_code}" --location --request POST 'https://seyanty.info/api/dashboard/update-profile' \
  --header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
  --header 'Accept: application/json' \
  --header 'Host: seyanty.info' \
  --header 'Connection: keep-alive' \
  --form 'name="admin"' \
  --form 'email="admin-1@mail.com"' \
  --form 'password="Admin#123"' \
  --form "photo=@\"$TEMP_PHOTO\"")

HTTP_BODY=$(echo "$RESPONSE" | sed -e '$d')
HTTP_STATUS=$(echo "$RESPONSE" | tail -n1 | sed -e 's/HTTP_STATUS://')

echo "Result:"
echo "Status Code: $HTTP_STATUS"
echo "Response Body:"
echo "$HTTP_BODY" | jq .
echo "=================================================="
```