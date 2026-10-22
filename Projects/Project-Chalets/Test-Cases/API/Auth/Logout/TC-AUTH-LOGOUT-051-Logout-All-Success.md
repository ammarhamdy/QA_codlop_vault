---
tc_id: TC-AUTH-LOGOUT-051
title: Logout All - Success
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
run_result:
---

# Test Data

| Field                  | Value                                        |
| ---------------------- | -------------------------------------------- |
| Authorization / Tokens | Device A: {{TOKEN_A}}; Device B: {{TOKEN_B}} |
| X-APP-ACCESS-KEY       | b9e8e7192a04a7a7c56065d7f9e4ea3e             |

# Preconditions

- Two independently active sessions exist for the same customer.

# Steps

1. Verify both tokens work on a protected endpoint.
2. Send POST `/auth/logout-all` with Token A.
3. Retry the protected endpoint with both tokens.

# Expected Result

- Logout All succeeds.
- Token A and Token B are both rejected.
- All customer sessions are terminated.

# Notes

- Confirm both tokens were valid before calling logout-all.
- Exact HTTP success code and response body are not specified in the PRD; confirm with the API contract.

# Attachments

# Script
