---
tc_id: TC-Login-007
title: Enter letters in Phone Number
priority:
  - High
status:
  - Draft
type:
  - Functional
linked_requirement: REQ-TAKAFUL-AUTH-001-Customer-Login-Redirection
tags:
  - test-case
---

# Test Data
| Field        | Value     |
| ------------ | --------- |
| Code         | +966      |
| Phone Number | 1234re333 |

# Preconditions
-User is on Login screen.
# Steps
1. Enter letters/alphabetic characters in phone number field.
2. Select  OTP delivery method: **WhatsApp** or **SMS**.
3. Click "Send Verification Code".
# Expected Result
-Letters are rejected and only valid numeric input is accepted.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*