---
tc_id: TC-API-DASH-AUTH-LOGIN-001
title: Valid Login
priority:
  - High
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
| Field         | Value                  |
| ------------- | ---------------------- |
| email_or_name | admin-1@mail.com       |
| password      | Admin#123              |

# Preconditions
- The dashboard login endpoint is reachable.
- The account (admin-1@mail.com) exists and is active.

# Steps
1. Send a POST request to `https://seyanty.info/api/dashboard/login`.
2. Set header `Accept: application/json`.
3. Send `email_or_name` and `password` as form fields.
4. Submit the request.
5. Observe the response.

# Expected Result
- HTTP status code is `200`.
- `status` is `success`.
- `message` is `تم تسجيل الدخول بنجاح`.
- `data` contains the admin object with `id`, `name`, `email`, `photo`, `status`, and `token`.

# Notes
- Applies to the VALID login scenario.

# Attachments
```sh
#!/usr/bin/env bash

# Test Case: TC-API-DASH-AUTH-LOGIN-001 - Valid Login
TITLE="TC-API-DASH-AUTH-LOGIN-001: Valid Login"
echo "=================================================="
echo "Running: $TITLE"
echo "=================================================="

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