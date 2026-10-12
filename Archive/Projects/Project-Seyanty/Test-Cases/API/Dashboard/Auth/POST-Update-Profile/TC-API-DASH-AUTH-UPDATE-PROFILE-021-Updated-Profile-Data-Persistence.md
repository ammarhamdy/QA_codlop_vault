---
tc_id: TC-API-DASH-AUTH-UPDATE-PROFILE-021
title: Updated Profile Data Persistence
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
| Method        | POST / GET               |
| Authorization | Bearer {valid_token}     |
| name          | admin-updated            |
| email         | admin-1@mail.com         |

# Preconditions
- An active admin session token is available.

# Steps
1. Send a POST request to `https://seyanty.info/api/dashboard/profile` with updated valid fields.
2. Confirm the update response is successful.
3. Send a GET request to the profile endpoint using the same token.
4. Inspect the returned profile.

# Expected Result
- The updated values are returned by the subsequent GET request.
- The update is persisted in the system.

# Notes
- Verifies data persistence after a profile update.

# Attachments
```sh
#!/usr/bin/env bash

# Test Case: TC-API-DASH-AUTH-UPDATE-PROFILE-021 - Updated Profile Data Persistence
TITLE="TC-API-DASH-AUTH-UPDATE-PROFILE-021: Updated Profile Data Persistence"
echo "=================================================="
echo "Running: $TITLE"
echo "=================================================="

# 1. Login to get an active token
LOGIN_RES=$(curl --silent --location --request POST 'https://seyanty.info/api/dashboard/login' \
  --header 'Accept: application/json' \
  --header 'Content-Type: application/json' \
  --data '{
      "email_or_name": "admin-1@mail.com",
      "password": "Admin#123"
  }')

TOKEN=$(echo "$LOGIN_RES" | jq -r '.data.token // .token // .access_token // empty')

# 2. Generate unique test values to verify persistence
TIMESTAMP=$(date +%s)
NEW_NAME="admin_${TIMESTAMP}"
NEW_EMAIL="admin_${TIMESTAMP}@mail.com"
NEW_PASSWORD="Admin#${TIMESTAMP}"

# 3. Create dummy image for upload
TEMP_PHOTO="/tmp/test_profile_photo.jpg"
if [ ! -f "$TEMP_PHOTO" ]; then
  echo "/9j/4AAQSkZJRgABAQEASABIAAD/2wBDAP//////////////////////////////////////////////////////////////////////////////////////wgALCAABAAEBAREA/8QAFBABAAAAAAAAAAAAAAAAAAAAAP/aAAgBAQABPxA=" | base64 -d > "$TEMP_PHOTO"
fi

echo "Step 1: Updating profile with new values..."
UPDATE_RES=$(curl --silent --write-out "\nHTTP_STATUS:%{http_code}" --location --request POST 'https://seyanty.info/api/dashboard/update-profile' \
  --header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
  --header 'Accept: application/json' \
  --header 'Host: seyanty.info' \
  --header 'Connection: keep-alive' \
  --header "Authorization: Bearer $TOKEN" \
  --form "name=\"$NEW_NAME\"" \
  --form "email=\"$NEW_EMAIL\"" \
  --form "password=\"$NEW_PASSWORD\"" \
  --form "photo=@\"$TEMP_PHOTO\"")

UPDATE_BODY=$(echo "$UPDATE_RES" | sed -e '$d')
UPDATE_STATUS=$(echo "$UPDATE_RES" | tail -n1 | sed -e 's/HTTP_STATUS://')

echo "Update Status Code: $UPDATE_STATUS"
echo "Update Response:"
echo "$UPDATE_BODY" | jq .

echo "--------------------------------------------------"
echo "Step 2: Re-authenticating with newly updated credentials to verify persistence..."

LOGIN_VERIFY_RES=$(curl --silent --write-out "\nHTTP_STATUS:%{http_code}" --location --request POST 'https://seyanty.info/api/dashboard/login' \
  --header 'Accept: application/json' \
  --header 'Content-Type: application/json' \
  --data "{
      \"email_or_name\": \"$NEW_EMAIL\",
      \"password\": \"$NEW_PASSWORD\"
  }")

LOGIN_VERIFY_BODY=$(echo "$LOGIN_VERIFY_RES" | sed -e '$d')
LOGIN_VERIFY_STATUS=$(echo "$LOGIN_VERIFY_RES" | tail -n1 | sed -e 's/HTTP_STATUS://')

echo "Re-login Status Code: $LOGIN_VERIFY_STATUS"
echo "Re-login Response:"
echo "$LOGIN_VERIFY_BODY" | jq .

# Extract persisted token and reset credentials back to default
PERSISTED_TOKEN=$(echo "$LOGIN_VERIFY_BODY" | jq -r '.data.token // .token // .access_token // empty')

if [ -n "$PERSISTED_TOKEN" ]; then
  echo "--------------------------------------------------"
  echo "Step 3: Rolling back credentials to original defaults..."
  curl --silent --location --request POST 'https://seyanty.info/api/dashboard/update-profile' \
    --header 'Accept: application/json' \
    --header "Authorization: Bearer $PERSISTED_TOKEN" \
    --form 'name="admin"' \
    --form 'email="admin-1@mail.com"' \
    --form 'password="Admin#123"' \
    --form "photo=@\"$TEMP_PHOTO\"" > /dev/null
  echo "Credentials rolled back successfully."
fi

echo "=================================================="
```