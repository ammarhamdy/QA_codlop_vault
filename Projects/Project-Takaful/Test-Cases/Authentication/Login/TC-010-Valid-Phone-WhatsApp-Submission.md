---
tc_id: TC-Login-010
title: Submit valid phone number using WhatsApp
priority:
  - High
status:
  - Draft
type: Functional
linked_requirement: REQ-TAKAFUL-AUTH-001-Customer-Login-Redirection
tags:
  - test-case
---

# Test Data
| Field        | Value     |
| ------------ | --------- |
| Code         | +966      |
| Phone Number | 587456321 |
|              |           |

# Preconditions
-User is on Login screen & Phone number is valid.
# Steps
1. Enter valid phone '587456321'.  
2. Select WhatsApp.  
3. Click "Send Verification Code".
# Expected Result
-OTP is sent to the customer's phone via WhatsApp and the OTP screen is displayed.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*