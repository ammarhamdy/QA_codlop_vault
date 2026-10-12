---
tc_id: TC-API-DASH-AUTH-PROFILE-005
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
| Field         | Value                       |
| ------------- | --------------------------- |
| URL           | /api/dashboard/profile     |
| Method        | GET                         |
| Authorization | Bearer {expired_token}      |

# Preconditions
- A token whose `exp` claim has already passed.

# Steps
1. Send a GET request to `https://seyanty.info/api/dashboard/profile`.
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
- The endpoint must not return profile data for expired tokens.

# Attachments
```sh
#!/usr/bin/env bash

# Test Case: TC-API-DASH-AUTH-PROFILE-005 - Expired Session Or Token
TITLE="TC-API-DASH-AUTH-PROFILE-005: Expired Session Or Token"
echo "=================================================="
echo "Running: $TITLE"
echo "=================================================="

# A historically expired JWT payload (exp: 1514764800 -> Jan 1, 2018)
EXPIRED_TOKEN="eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkFkbWluIiwiZXhwIjoxNTE0NzY0ODAwfQ.du_u68p491p4K6j9eR8_6E6U-u4U4Qe7GzVqG4cR_1k"

RESPONSE=$(curl --silent --write-out "\nHTTP_STATUS:%{http_code}" --location --request GET 'https://seyanty.info/api/dashboard/profile' \
  --header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
  --header 'Accept: application/json' \
  --header 'Connection: keep-alive' \
  --header "Authorization: Bearer $EXPIRED_TOKEN")

HTTP_BODY=$(echo "$RESPONSE" | sed -e '$d')
HTTP_STATUS=$(echo "$RESPONSE" | tail -n1 | sed -e 's/HTTP_STATUS://')

echo "Result:"
echo "Status Code: $HTTP_STATUS"
echo "Response Body:"
echo "$HTTP_BODY" | jq .
echo "=================================================="
```