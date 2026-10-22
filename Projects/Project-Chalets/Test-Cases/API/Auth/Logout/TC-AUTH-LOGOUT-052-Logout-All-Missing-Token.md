---
tc_id: TC-AUTH-LOGOUT-052
title: Logout All - Missing Authorization
priority: High
status: Ready
type: API
linked_requirement: Account - Security and Sessions (Logout / Logout All)
tags:
  - test-case
  - api
  - negative
  - auth
  - logout
run_result:
---

# Test Data

| Field                  | Value                        |
| ---------------------- | ---------------------------- |
| Authorization / Tokens | Missing                      |
| X-APP-ACCESS-KEY       | Valid application access key |

# Preconditions

- Logout All endpoint requires authentication.

# Steps

1.  Send POST request to `/api/auth/logout-all with form parameter: X-APP-ACCESS-KEY="b9e8e7192a04a7a7c56065d7f9e4ea3e".
2. Remove the Authorization header.
3. Send the request and inspect the response.

# Expected Result

- HTTP Status Code: `401 Unauthorized`.
- The logout-all request is rejected as unauthenticated.
- No user sessions are terminated.
- All previously active sessions remain valid.

# Notes


# Attachments

# Script
