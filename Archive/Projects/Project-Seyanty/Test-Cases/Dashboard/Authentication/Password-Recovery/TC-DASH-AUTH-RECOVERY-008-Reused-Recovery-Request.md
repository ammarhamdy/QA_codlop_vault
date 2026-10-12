---
tc_id: TC-DASH-AUTH-RECOVERY-008
title: Reused Recovery Request
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: REQ-DASH-AUTH-003
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
|       |       |

# Preconditions
- A password recovery request has already been successfully used to set a new password.

# Steps
1. Complete a successful password recovery using a recovery request.
2. Attempt to use the same recovery request again (e.g., revisit the recovery link/token).
3. Observe the system response.

# Expected Result
- The system rejects the already-used recovery request.
- No further password change is performed using the reused request.

# Notes
- Applies to AC-11 — Recovery Request Reuse.

# Attachments