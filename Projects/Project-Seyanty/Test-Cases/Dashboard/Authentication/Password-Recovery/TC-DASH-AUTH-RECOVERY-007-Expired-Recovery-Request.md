---
tc_id: TC-DASH-AUTH-RECOVERY-007
title: Expired Recovery Request
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
- A password recovery request has been initiated and its configured validity period has elapsed.

# Steps
1. Initiate a password recovery request.
2. Wait until the recovery request expires.
3. Attempt to use the expired recovery request to set a new password.
4. Observe the system response.

# Expected Result
- The system rejects the expired recovery request.
- The user is required to initiate a new recovery request.

# Notes
- Applies to AC-10 — Recovery Request Expiration.

# Attachments