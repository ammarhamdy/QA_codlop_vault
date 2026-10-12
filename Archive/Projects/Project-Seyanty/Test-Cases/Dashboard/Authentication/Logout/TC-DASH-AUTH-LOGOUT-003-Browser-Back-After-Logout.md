---
tc_id: TC-DASH-AUTH-LOGOUT-003
title: Browser Back After Logout
priority:
  - Medium
status:
  - Ready
type:
  - Regression
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
1. Log in and navigate to a protected dashboard page.
2. Log out successfully; the user should be redirected to the login page.
3. Use the browser back navigation controls to navigate backward.
4. Observe whether protected dashboard content is restored.

# Expected Result
- The system shall not restore access to protected dashboard resources through the terminated session.
- Navigating backward does not display previously accessed protected content.

# Notes
- Applies to AC-04 — Browser Back Navigation.

# Attachments