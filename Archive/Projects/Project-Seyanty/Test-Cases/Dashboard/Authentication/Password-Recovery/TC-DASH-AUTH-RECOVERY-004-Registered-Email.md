---
tc_id: TC-DASH-AUTH-RECOVERY-004
title: Registered Email
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
| Field | Value            |
| ----- | ---------------- |
| Email | user@example.com |

# Preconditions
- Password recovery form is displayed.
- The provided email belongs to a registered dashboard account.

# Steps
1. Open the password recovery form.
2. Enter a valid email address belonging to a dashboard account.
3. Submit the password recovery request.
4. Observe the system response.

# Expected Result
- The system processes the recovery request.
- The system initiates the configured password recovery process.

# Notes
- Applies to AC-04 — Recovery Request and AC-05 — Registered Account.

# Attachments