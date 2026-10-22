---
tc_id: TC-AUTH-LOGOUT-004
title: Logout - Other Device Remains Active
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

- A registered customer account is active and not suspended.
- The customer has successfully logged in from two independent sessions (Device A and Device B).
- Each session has its own valid access token.
- Token A and Token B are different and belong to the same customer.
- Both sessions are active before executing the test.
- A protected API endpoint is available to verify authentication status.
# Steps

1. Log in to the customer account from Device A and save the generated access token as `{{access_token_A}}` & Rep0eat with device B.
2. Send a request to a protected endpoint using `Bearer {{access_token_A,B}}` and verify that the request succeeds.
3. Request `POST /auth/logout` & observe the response.    
4. Send another request to the protected endpoint using Token A.
5. Send another request to the protected endpoint using Token B.
6. Compare the authentication results of both tokens.

# Expected Result

- The logout request using Token A succeeds.
- Only the session associated with Token A is terminated.
- Token A becomes invalid and can no longer access protected endpoints.
- Requests using Token A are rejected as unauthenticated.
- Token B remains valid and can still access protected endpoints.
- Logging out from Device A does not terminate the active session on Device B.

# Notes

- Use two independently created sessions, not two copies of the same access token.
- Both tokens must belong to the same customer account.
- If Token B is also invalidated after logging out with Token A, the behavior does not match the expected single-device logout flow.
- The exact logout success HTTP status code and response body are not specified in the PRD and must be confirmed against the API contract.
- Authentication rejection is commonly represented by HTTP `401 Unauthorized`, but the exact status code must be verified against the API contract.

# Attachments

# Script
