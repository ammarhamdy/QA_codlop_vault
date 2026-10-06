---
tc_id: TC-Login-008
title: Enter special characters in Phone Number
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
| Field        | Value         |
| ------------ | ------------- |
| Code         | +966          |
| Phone Number | `512-345-678` |

# Preconditions
-User is on Login screen.
# Steps
1. Enter Phone number with special characters`512-345-678`.  
2. Select  OTP delivery method: **WhatsApp** or **SMS**.
3. Click "Send Verification Code".
# Expected Result
-Invalid characters are rejected or validation is displayed according to the field behavior.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*