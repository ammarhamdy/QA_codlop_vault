---
tc_id: TC-DASH-AUTH-LOGOUT-001
title: Successful Logout
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
- User is authenticated with an active session.
- Dashboard is accessible.

# Steps
1. Log in and establish an authenticated session.
2. Navigate to the dashboard.
3. Verify that a logout action is provided.
4. Select the logout action.
5. Observe the system response and the resulting page.

# Expected Result
- The system terminates the authenticated session.
- The user is redirected to the dashboard login page.
- Further access to dashboard resources using the terminated session is prevented.

# Notes
- Applies to AC-01 — Logout Availability and AC-02 — Successful Logout.

# Attachments