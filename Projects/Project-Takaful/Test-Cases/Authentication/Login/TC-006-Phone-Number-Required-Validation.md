---
tc_id: TC-Login-006
title: Leave Phone Number empty
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
| Field        | Value   |
| ------------ | ------- |
| Code         | +966    |
| Phone Number | (empty) |

# Preconditions
-User is on Login screen.
# Steps
1. Leave Phone Number empty.  
2. Select  OTP delivery method: **WhatsApp** or **SMS**.
3. Click "Send Verification Code".
# Expected Result
-Required-field validation is displayed and OTP is not sent.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*