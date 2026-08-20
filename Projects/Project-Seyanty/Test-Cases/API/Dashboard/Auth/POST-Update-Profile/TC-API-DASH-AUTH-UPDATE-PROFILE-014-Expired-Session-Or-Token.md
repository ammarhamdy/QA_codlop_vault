---
tc_id: TC-API-DASH-AUTH-UPDATE-PROFILE-014
title: Expired Session Or Token
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
| Field         | Value                        |
| ------------- | ---------------------------- |
| URL           | /api/dashboard/profile      |
| Method        | POST                         |
| Authorization | Bearer {expired_token}       |

# Preconditions
- A token whose `exp` claim has already passed.

# Steps
1. Send a POST request to `https://seyanty.info/api/dashboard/profile`.
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
- The endpoint must not update the profile for expired tokens.

# Attachments
```sh
#!/usr/bin/env bash

# Test Case: TC-API-DASH-AUTH-UPDATE-PROFILE-014 - Expired Session Or Token
TITLE="TC-API-DASH-AUTH-UPDATE-PROFILE-014: Expired Session Or Token"
echo "=================================================="
echo "Running: $TITLE"
echo "=================================================="

# 1. Create a minimal valid 1x1 JPEG using base64
TEMP_PHOTO="/tmp/test_profile_photo.jpg"
if [ ! -f "$TEMP_PHOTO" ]; then
  echo "/9j/4AAQSkZJRgABAQEASABIAAD/2wBDAP//////////////////////////////////////////////////////////////////////////////////////wgALCAABAAEBAREA/8QAFBABAAAAAAAAAAAAAAAAAAAAAP/aAAgBAQABPxA=" | base64 -d > "$TEMP_PHOTO"
fi

# 2. Known expired JWT token for testing token expiration handling
EXPIRED_TOKEN="eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL3NleWFudHkuaW5mby9hcGkvZGFzaGJvYXJkL2xvZ2luIiwiaWF0IjoxNTE0Nzc0NDAwLCJleHAiOjE1MTQ3Nzc2MDAsIm5iZiI6MTUxNDc3NDQwMCwianRpIjoiZXhwaXJlZFRva2VuSWRUZXN0Iiwic3ViIjoiMTkiLCJwcnYiOiJkZjg4M2RiOTdiZDA1ZWY4ZmY4NTA4MmQ2ODZjNDVlODMyZTU5M2E5In0.kH7fTqZ9_dummy_signature_for_expired_token_sample"

# 3. Execute Update Request using the expired token
RESPONSE=$(curl --silent --write-out "\nHTTP_STATUS:%{http_code}" --location --request POST 'https://seyanty.info/api/dashboard/update-profile' \
  --header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
  --header 'Accept: application/json' \
  --header 'Host: seyanty.info' \
  --header 'Connection: keep-alive' \
  --header "Authorization: Bearer $EXPIRED_TOKEN" \
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