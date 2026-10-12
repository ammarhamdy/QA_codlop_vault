---
tc_id: TC-DASH-AUTH-RECOVERY-002
title: Required Email
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
| Field | Value   |
| ----- | ------- |
| Email | (empty) |

# Preconditions
- Password recovery form is displayed.

# Steps
1. Open the password recovery form.
2. Leave the email address field empty.
3. Submit the password recovery request.
4. Observe the system response.

# Expected Result
- The system prevents the recovery request.
- An appropriate validation message is displayed indicating that the email is required.

# Notes
- Applies to AC-02 — Email Is Required.

# Attachments