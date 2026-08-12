---
tc_id: TC-DASH-AUTH-SESSION-006
title: Session Invalidation After Logout
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: REQ-DASH-AUTH-004
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
|       |       |

# Preconditions
- User has a valid authenticated session.
- Logout action is available on the dashboard.

# Steps
1. Authenticate and establish an active session.
2. Perform the logout operation and wait for it to complete.
3. Attempt subsequent requests using the terminated session (e.g., accessing a protected resource directly).
4. Observe the system response.

# Expected Result
- The system invalidates the user's authenticated session after logout.
- Subsequent requests using that session do not grant authenticated access.

# Notes
- Applies to AC-06 — Logout Session Invalidation.

# Attachments