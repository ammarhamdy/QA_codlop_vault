---
tc_id: TC-DASH-AUTH-SESSION-007
title: Session After Password Change
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
- Password change operation is available.
- A configured session-security policy applies to existing sessions after password change.

# Steps
1. Authenticate and establish a session.
2. Change the account password successfully.
3. Wait for the password change operation to complete.
4. Continue using the existing authenticated session (e.g., access a protected dashboard resource).
5. Observe the system response.

# Expected Result
- The system applies the configured session-security policy to existing authenticated sessions after the password change.
- Either the sessions are invalidated/re-established or kept according to the configured policy, without granting unintended access.

# Notes
- Applies to AC-07 — Session After Password Change.

# Attachments