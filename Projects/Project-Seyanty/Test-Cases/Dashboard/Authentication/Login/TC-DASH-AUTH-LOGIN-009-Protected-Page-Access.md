---
tc_id: TC-DASH-AUTH-LOGIN-009
title: Protected Page Access
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: REQ-DASH-AUTH-001
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
|       |       |

# Preconditions
- User is not authenticated (no active authenticated session).
- A protected dashboard resource URL is known.

# Steps
1. Ensure the user is not authenticated.
2. Attempt to access a protected dashboard resource directly (e.g., by entering its URL in the browser).
3. Observe the system response and resulting page.

# Expected Result
- The system denies access to the protected dashboard resource.
- The user is redirected to the login page.

# Notes
- Applies to AC-10 — Protected Dashboard Access.

# Attachments