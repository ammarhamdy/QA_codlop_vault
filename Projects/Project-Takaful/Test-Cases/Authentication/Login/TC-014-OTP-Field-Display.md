---
tc_id: TC-Login-014
title: OTP field is displayed correctly
priority:
  - High
status:
  - Draft
type:
  - Functional
linked_requirement: Login & OTP Scenarios
tags:
  - test-case
---

# Test Data
| Field        | Value     |
| ------------ | --------- |
| Code         | +966      |
| Phone Number | 587456321 |

# Preconditions
-User enter valid phone &navigated to OTP screen .
# Steps
1. Enter valid phone number.  
2. Select delivery channel.  
3. Click "Send Verification Code".
4.  Check OTP field.
# Expected Result
-OTP input field is displayed and accepts OTP digits.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*