---
tc_id: TC-Login-013
title: Verify OTP screen after successful OTP request
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement:
tags:
  - test-case
---

# Test Data
| Field        | Value     |
| ------------ | --------- |
| Code         | +966      |
| Phone Number | 587456321 |

# Preconditions
-User is on Login screen & Phone number is valid.
# Steps
1. Enter valid phone number '587456321'.  
2. Select delivery channel.  
3. Click "Send Verification Code".
# Expected Result
-User is navigated to the OTP screen.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*