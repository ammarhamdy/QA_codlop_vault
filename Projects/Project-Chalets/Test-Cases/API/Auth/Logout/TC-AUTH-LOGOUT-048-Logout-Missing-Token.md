---
tc_id: TC-AUTH-LOGOUT-048
title: Logout - Missing Authorization
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
| X-APP-ACCESS-KEY | b9e8e7192a04a7a7c56065d7f9e4ea3e |

# Preconditions

- A customer account is active.
- The customer has successfully logged in and obtained a valid access token.
- A protected API endpoint is available to verify whether the customer's session is still active.

# Steps

1. Send POST request to `/api/auth/logout` with form parameter: X-APP-ACCESS-KEY="b9e8e7192a04a7a7c56065d7f9e4ea3e"`
2. Observe response status and app state

# Expected Result

- The logout request without an access token is rejected.
- The API does not treat the unauthenticated request as a successful authenticated logout.
- The response indicates that authentication is required or missing.
- No existing authenticated session is terminated.
- The original valid access token remains active and can still access the protected endpoint.

# Notes

- HTTP 401 is an expected convention, not explicitly specified in the PRD.
- Exact HTTP success code and response body are not specified in the PRD; confirm with the API contract.

# Attachments

# Script
