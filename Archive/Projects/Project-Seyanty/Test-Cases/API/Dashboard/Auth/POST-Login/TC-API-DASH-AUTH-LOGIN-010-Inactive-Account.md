---
tc_id: TC-API-DASH-AUTH-LOGIN-010
title: Inactive Account
priority:
  - Medium
status:
  - completed
type:
  - API
linked_requirement: REQ-API-DASH-AUTH-LOGIN
tags:
  - test-case
run_result: pass
---

# Test Data
| Field         | Value               |
| ------------- | ------------------- |
| email_or_name | inactive@mail.com   |
| password      | Admin#123           |

# Preconditions
- The dashboard login endpoint is reachable.
- The account `inactive@mail.com` exists but its status is `inactive`.

# Steps
1. Send a POST request to `https://seyanty.info/api/dashboard/login`.
2. Set header `Accept: application/json`.
3. Send credentials of an account with status `inactive`.
4. Submit the request.
5. Observe the response.

# Expected Result
- The login attempt is rejected.
- `status` is `error`.
- An error message indicates the account is inactive or the credentials are incorrect.

# Notes
- Requires an inactive test account or an admin account to be deactivated.

# Attachments
```sh
#!/usr/bin/env bash

# Test Case: TC-API-DASH-AUTH-LOGIN-010 - Inactive Account
TITLE="TC-API-DASH-AUTH-LOGIN-010: Inactive Account"
echo "=================================================="
echo "Running: $TITLE"
echo "=================================================="

# Note: Uses an inactive/deactivated account credential
RESPONSE=$(curl --silent --write-out "\nHTTP_STATUS:%{http_code}" --location --request POST 'https://seyanty.info/api/dashboard/login' \
  --header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
  --header 'Accept: application/json' \
  --header 'Content-Type: application/json' \
  --header 'Connection: keep-alive' \
  --data '{
      "email_or_name": "admin-1@mail.com",
      "password": "Admin#123"
  }')

HTTP_BODY=$(echo "$RESPONSE" | sed -e '$d')
HTTP_STATUS=$(echo "$RESPONSE" | tail -n1 | sed -e 's/HTTP_STATUS://')

echo "Result:"
echo "Status Code: $HTTP_STATUS"
echo "Response Body:"
echo "$HTTP_BODY" | jq .
echo "=================================================="
```