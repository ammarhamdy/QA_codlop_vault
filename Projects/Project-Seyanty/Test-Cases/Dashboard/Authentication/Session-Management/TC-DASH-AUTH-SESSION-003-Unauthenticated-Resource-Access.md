---
tc_id: TC-DASH-AUTH-SESSION-003
title: Unauthenticated Resource Access
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
- User does not have a valid authenticated session.

# Steps
1. Ensure the user is not authenticated (e.g., clear session / logout).
2. Attempt to access a protected dashboard resource directly.
3. Observe the system response.

# Expected Result
- The system denies access to the protected dashboard resource.
- The user is redirected to the login page.

# Notes
- Applies to AC-03 — Unauthenticated Resource Access.

# Attachments