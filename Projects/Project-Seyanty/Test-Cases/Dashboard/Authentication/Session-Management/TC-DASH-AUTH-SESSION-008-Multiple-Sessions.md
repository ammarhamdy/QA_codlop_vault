---
tc_id: TC-DASH-AUTH-SESSION-008
title: Multiple Sessions
priority:
  - Medium
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
- The same dashboard account can be authenticated from multiple sessions (e.g., different browsers or devices).
- A configured session policy governs multiple sessions for one account.

# Steps
1. Authenticate the same dashboard account from two different sessions.
2. Terminate one of the sessions (e.g., logout in one session).
3. Use the remaining (terminated or active) session to access protected dashboard resources.
4. Observe the system response.

# Expected Result
- The system applies the configured session policy without unintentionally granting access through the terminated session.
- The terminated session cannot grant authenticated access to the dashboard.

# Notes
- Applies to AC-08 — Multiple Sessions.

# Attachments