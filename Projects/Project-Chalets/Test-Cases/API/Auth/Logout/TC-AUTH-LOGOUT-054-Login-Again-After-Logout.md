---
tc_id: TC-AUTH-LOGOUT-054
title: Login Again After Logout
priority: High
status: Ready
type: API
linked_requirement: Account - Security and Sessions (Logout / Logout All)
tags:
  - test-case
  - api
  - positive
  - auth
  - logout
run_result: Pass
---

# Test Data

| Field                  | Value                                                     |
| ---------------------- | --------------------------------------------------------- |
| Authorization / Tokens | Old token: {{OLD_TOKEN}}; Registered phone; Valid new OTP |
| X-APP-ACCESS-KEY       | b9e8e7192a04a7a7c56065d7f9e4ea3e                          |

# Preconditions

- A customer has logged out successfully and their previous token is revoked.

# Steps

1. Confirm the old token is rejected by a protected endpoint.
2. Complete Send OTP and Verify OTP for the same customer.
3. Obtain the new access token.
4. Call the protected endpoint with the new token and then the old token.

# Expected Result

- New authentication succeeds and establishes a session.
- New token accesses the protected endpoint.
- Old token remains invalid.

# Notes

- OTP login is the authentication flow documented in the PRD.
# Attachments

# Script
