---
tc_id: TC-DASH-AUTH-LOGOUT-002
title: Protected Page After Logout
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: REQ-DASH-AUTH-002
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
|       |       |

# Preconditions
- User has successfully logged out (session terminated).

# Steps
1. Log in and later log out successfully.
2. Attempt to access a protected dashboard resource using the terminated session, for example:
   - by entering the protected dashboard URL directly in the browser, or
   - by submitting a subsequent request using the previously authenticated context.
3. Observe the system response.

# Expected Result
- The system denies access to the protected dashboard resource.
- The user is required to authenticate again.
- The system considers the user unauthenticated for subsequent requests using the terminated authentication context.

# Notes
- Applies to AC-03 — Protected Resource After Logout and AC-05 — Session Termination.

# Attachments