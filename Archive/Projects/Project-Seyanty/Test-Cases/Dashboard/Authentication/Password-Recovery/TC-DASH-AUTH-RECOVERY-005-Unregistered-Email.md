---
tc_id: TC-DASH-AUTH-RECOVERY-005
title: Unregistered Email
priority:
  - Medium
status:
  - Ready
type:
  - Functional
linked_requirement: REQ-DASH-AUTH-003
tags:
  - test-case
---

# Test Data
| Field | Value                    |
| ----- | ------------------------ |
| Email | notregistered@example.com |

# Preconditions
- Password recovery form is displayed.
- The provided email does not belong to a dashboard account.

# Steps
1. Open the password recovery form.
2. Enter an email address that does not belong to any dashboard account.
3. Submit the password recovery request.
4. Observe the system response.

# Expected Result
- The system does not disclose whether the account exists.
- The system returns an appropriate generic response consistent with the registered-account flow.

# Notes
- Applies to AC-06 — Unregistered Email.

# Attachments