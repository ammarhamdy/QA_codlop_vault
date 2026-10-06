---
tc_id: TC-Login-005
title: Enter phone number with more than 9 digits
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
| Field        | Value         |
| ------------ | ------------- |
| Code         | +966          |
| Phone Number | 5123456774577 |

# Preconditions
-User is on Login screen.
# Steps
1. Enter  number exceeds  allowed length '5123456774577'.  
2. Select  OTP delivery method: **WhatsApp** or **SMS**.
3. Click "Send Verification Code".
# Expected Result
-Number is rejected or additional digits cannot be entered according to the field validation.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*