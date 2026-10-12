---
tc_id: TC-API-DASH-AUTH-PROFILE-001
title: Get Authenticated User Profile
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
| Method        | GET                      |
| Authorization | Bearer {valid_token}     |

# Preconditions
- An active admin session token is obtained via the login endpoint.

# Steps
1. Send a GET request to `https://seyanty.info/api/dashboard/profile`.
2. Set header `Accept: application/json`.
3. Set header `Authorization: Bearer {valid_token}`.
4. Submit the request.
5. Observe the response.

# Expected Result
- HTTP status code is `200`.
- `status` is `success`.
- `data` contains the authenticated admin's profile information.

# Notes
- The profile belongs to the token holder.

# Attachments
```sh
#!/usr/bin/env bash

# Test Case: TC-API-DASH-AUTH-PROFILE-001 - Get Authenticated User Profile
TITLE="TC-API-DASH-AUTH-PROFILE-001: Get Authenticated User Profile"
echo "=================================================="
echo "Running: $TITLE"
echo "=================================================="

# 1. Login to retrieve Bearer Token
LOGIN_RES=$(curl --silent --location --request POST 'https://seyanty.info/api/dashboard/login' \
  --header 'Accept: application/json' \
  --header 'Content-Type: application/json' \
  --data '{
      "email_or_name": "admin-1@mail.com",
      "password": "Admin#123"
  }')

  
echo -e "\nPOST-LOGIN-RES:"
echo "${LOGIN_RES}" | jq .
echo -e "\n"


TOKEN=$(echo "$LOGIN_RES" | grep -o '"token":"[^"]*' | cut -d'"' -f4)


echo -e "\nTOKEN:"
lolcat <<< "${TOKEN}"
echo -e "\n"


if [ -z "$TOKEN" ]; then
  # Fallback extraction if token is nested under data/access_token
  TOKEN=$(echo "$LOGIN_RES" | grep -o '"access_token":"[^"]*' | cut -d'"' -f4)
fi

# 2. Execute Profile Request
RESPONSE=$(curl --silent --location --request GET 'https://seyanty.info/api/dashboard/profile' \
  --header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
  --header 'Accept: application/json' \
  --header "Authorization: Bearer $TOKEN")


echo -e "\nGET-PROFILE-RES:"
echo "${RESPONSE}" | jq .
echo -e "\n"


HTTP_BODY=$(echo "$RESPONSE" | sed -e '$d')
HTTP_STATUS=$(echo "$RESPONSE" | tail -n1 | sed -e 's/HTTP_STATUS://')

echo "=================================================="
```