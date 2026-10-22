---
tc_id: TC-AUTH-LOGOUT-047
title: Logout - Success
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

| Field            | Value                                               |
| ---------------- | --------------------------------------------------- |
| {BearerToken}    | 4\|hNlalW7en8qyFaByvpaONUoC8ZpTLSNvYPYPzLdJ06bfc5f7 |
| X-APP-ACCESS-KEY | b9e8e7192a04a7a7c56065d7f9e4ea3e                    |

# Preconditions

- Valid authenticated customer session.
- User is on any screen within the app
- Bearer token is active and not expired

# Steps

1. Send POST request to `/api/auth/logout` with form parameter: X-APP-ACCESS-KEY="b9e8e7192a04a7a7c56065d7f9e4ea3e"`
2. Include `Authorization: Bearer 4|hNlalW7en8qyFaByvpaONUoC8ZpTLSNvYPYPzLdJ06bfc5f7
3. Observe response status and app state

# Expected Result

- HTTP Status Code: 200
- Response body `success: true`
- `message` equals "تم تسجيل الخروج بنجاح"
- `data` is null (no content returned)
- Bearer token is invalidated/cleared from client storage
- App navigates to Screen 1 (Role Selection / Login Screen)
- User must re-authenticate to access any protected resources


# Notes

- Confirm token revocation by requesting a protected endpoint.


# Attachments

# Script
