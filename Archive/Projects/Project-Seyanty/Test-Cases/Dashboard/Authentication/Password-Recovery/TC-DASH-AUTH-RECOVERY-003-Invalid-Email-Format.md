---
tc_id: TC-DASH-AUTH-RECOVERY-003
title: Invalid Email Format
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
| Field | Value         |
| ----- | ------------- |
| Email | invalid-email |

# Preconditions
- Password recovery form is displayed.

# Steps
1. Open the password recovery form.
2. Enter an email address with an invalid format.
3. Submit the password recovery request.
4. Observe the system response.

# Expected Result
- The system rejects the request.
- An appropriate validation message is displayed indicating the email format is invalid.

# Notes
- Applies to AC-03 — Valid Email Format.

# Attachments