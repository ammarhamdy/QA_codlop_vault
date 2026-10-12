---
tc_id: TC-API-DASH-ADMIN-GET-012
title: Verify multiple admins are returned
priority:
  - Medium
status:
  - completed
type:
  - API
linked_requirement: REQ-API-DASH-ADMIN-GET
tags:
  - test-case
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `GET https://seyanty.info/api/dashboard/admins` |
| Content-Type | `application/json` |
| Authorization | `Bearer <valid_token>` |
| Query Parameters | `pagination=on&page=1&limit=100` |

# Preconditions
- User is logged in to the dashboard as an admin with a valid token.
- More than one admin record exists in the system (e.g., `total > 1`).

# Steps
1. Send a `GET` request to `https://seyanty.info/api/dashboard/admins?pagination=on&page=1&limit=100`.
2. Count the objects in the `data` array.
3. Compare the count against `pagination.total` and the database record count.

# Expected Result
- The `data` array contains multiple admin objects.
- The number of returned objects matches `pagination.total` (subject to the `limit`/page constraints).
- Each returned admin has a distinct `id`.

# Notes
- Increase `limit` to fetch all records in a single page when asserting the full count.

# Attachments
```sh
#!/usr/bin/env bash

BASE_URL="https://seyanty.info/api/dashboard"

# Function to log in and retrieve the auth token
login() {
  local email_or_name="${1:-admin@admin.com}"
  local password="${2:-Admin#123}"

  local login_res
  login_res=$(curl --silent --location --request POST "${BASE_URL}/login" \
    --header 'Accept: application/json' \
    --header 'Content-Type: application/json' \
    --data "{
      \"email_or_name\": \"${email_or_name}\",
      \"password\": \"${password}\"
    }")

  echo "$login_res" | jq -r '.data.token // .token // .access_token // empty'
}

# Function to execute logout
logout() {
  local token="$1"

  curl --silent --write-out "\nHTTP_STATUS:%{http_code}" --location --request POST "${BASE_URL}/logout" \
    --header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
    --header 'Accept: application/json' \
    --header 'Host: seyanty.info' \
    --header 'Connection: keep-alive' \
    --header "Authorization: Bearer ${token}"
}

# Function to list admins
list_admins() {
  local token="$1"
  local page="${2:-1}"
  local limit="${3:-100}"

  curl --silent --write-out "\nHTTP_STATUS:%{http_code}" --location --request GET "${BASE_URL}/admins?pagination=on&page=${page}&limit=${limit}" \
    --header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
    --header "Authorization: Bearer ${token}" \
    --header 'Accept: */*' \
    --header 'Host: seyanty.info' \
    --header 'Connection: keep-alive'
}

# Helper function to parse HTTP status and response body
parse_response() {
  local raw_response="$1"
  HTTP_BODY=$(echo "$raw_response" | sed -e '$d')
  HTTP_STATUS=$(echo "$raw_response" | tail -n1 | sed -e 's/HTTP_STATUS://')
}

# ==================================================
# Test Execution
# ==================================================
TITLE="TC-API-DASH-AUTH-LOGOUT-001: Successful Logout"
echo "=================================================="
echo "Running: $TITLE"
echo "=================================================="

# 1. Login
TOKEN=$(login "admin@admin.com" "Admin#123")
echo "Token: $TOKEN"

# 2. Logout
#LOGOUT_RES=$(logout "$TOKEN")
#parse_response "$LOGOUT_RES"
#echo "Logout Status Code: $HTTP_STATUS"

# 3. List admins (verifying token behavior after logout)
ADMINS_RES=$(list_admins "$TOKEN")
parse_response "$ADMINS_RES"

echo "Result:"
echo "Status Code: $HTTP_STATUS"
echo "Response Body:"
echo "$HTTP_BODY" | jq .
echo "=================================================="
```