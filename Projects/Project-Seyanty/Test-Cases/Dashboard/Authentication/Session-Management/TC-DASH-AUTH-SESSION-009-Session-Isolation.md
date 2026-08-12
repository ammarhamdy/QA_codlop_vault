---
tc_id: TC-DASH-AUTH-SESSION-009
title: Session Isolation
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
- Multiple users are authenticated simultaneously in separate sessions.

# Steps
1. Authenticate user A in one session.
2. Authenticate user B in another session concurrently.
3. Have each user access their protected dashboard resources.
4. Observe which account/data each request is associated with.

# Expected Result
- The system associates each request with the correct authenticated user.
- One user's session does not grant access to another user's account or data.

# Notes
- Applies to AC-09 — Session Isolation.

# Attachments