---
tc_id: TC-DASH-AUTH-SESSION-004
title: Session Persistence
priority:
  - High
status:
  - Ready
type:
  - Regression
linked_requirement: REQ-DASH-AUTH-004
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
|       |       |

# Preconditions
- User has successfully authenticated and holds a valid session.

# Steps
1. Authenticate as a valid user.
2. Navigate between multiple protected dashboard pages.
3. Observe the authenticated state after each navigation.

# Expected Result
- The system maintains the user's authenticated state throughout navigation between protected pages during the valid session.
- The user is not asked to authenticate again.

# Notes
- Applies to AC-04 — Session Persistence.

# Attachments