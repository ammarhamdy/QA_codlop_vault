---
tc_id: TC-DASH-AUTH-RECOVERY-006
title: Invalid Recovery Request
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
- A password recovery request has been initiated (or a recovery token/identifier is supplied).

# Steps
1. Initiate a password recovery request.
2. Attempt to use an invalid, forged, or tampered recovery identifier/token to set a new password.
3. Observe the system response.

# Expected Result
- The system verifies that the recovery request is valid and authorized.
- Invalid recovery requests are rejected and a new password is not set.

# Notes
- Applies to AC-07 — Recovery Authorization.

# Attachments