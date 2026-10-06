---
tc_id: TC-Login-004
title: Enter phone number with less than 9 digits
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: REQ-TAKAFUL-AUTH-001-Customer-Login-Redirection
tags:
  - test-case
---

# Test Data
| Field        | Value    |
| ------------ | -------- |
| Code         | +966     |
| Phone Number | 51234567 |

# Preconditions
-User is on Login screen.
# Steps
1. Enter  number less than minimum allowed length '51234567'.  
2. Select  OTP delivery method: **WhatsApp** or **SMS**.
3. Click "Send Verification Code".
# Expected Result
-Number is rejected and validation message is displayed..
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*