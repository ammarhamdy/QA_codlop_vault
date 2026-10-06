---
tc_id: TC-login-011
title: Send OTP via WhatsApp to a number without WhatsApp
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
| Phone Number | 987456344 |

# Preconditions
-User is on Login screen & Phone number is valid.

# Steps
1. Enter a valid  phone number '987456344'.  
2. Select **WhatsApp**.  
3. Click **Send Verification Code**.
# Expected Result
-An error message is displayed indicating that WhatsApp is not available for this number, the user remains on the current screen, and is given the option to receive the OTP via SMS instead.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*