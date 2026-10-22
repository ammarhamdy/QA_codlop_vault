---
tc_id: TC-AUTH-LOGOUT-050
title: Logout - Invalid Bearer Token
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
run_result: Pass
---

# Test Data

| Field            | Value                            |
| ---------------- | -------------------------------- |
| {BearerToken}    | invalid_token                    |
| X-APP-ACCESS-KEY | b9e8e7192a04a7a7c56065d7f9e4ea3e |

# Preconditions

- The customer has an active account.
- The customer has successfully logged in and obtained a valid access token.
- A protected endpoint is available to verify the customer's active session.

# Steps

1. Send POST request to `/api/auth/logout` with form parameter: X-APP-ACCESS-KEY="b9e8e7192a04a7a7c56065d7f9e4ea3e"`
2. Include `Authorization: invalid {BearerToken}
3. Observe response status and app state
# Expected Result

- HTTP Status Code: `401 Unauthorized`.
- The request is rejected as unauthenticated.
- The invalid Bearer Token does not authorize logout.
- No active user session is terminated.
- The API returns an authentication error indicating that the token is invalid or unauthorized.

# Notes

# Attachments

# Script
