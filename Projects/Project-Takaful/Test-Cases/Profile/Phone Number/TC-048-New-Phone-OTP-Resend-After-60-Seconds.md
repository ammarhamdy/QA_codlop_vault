---
tc_id: TC-Phone-048
title: Verify that the customer can resend the new-phone OTP after 60 seconds
priority:
  - High
status:
  - Draft
type:
  - Functional
linked_requirement: Edit Profile
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
|       |       |
|       |       |

# Preconditions
-OTP was sent & 60 seconds have elapsed.
# Steps
1. Wait until 60 seconds have elapsed.  
2. Tap **Resend OTP**.  
3. Check the new phone.
# Expected Result
-A new OTP is sent successfully after the 60-second cooldown period, and the customer can use the newly issued OTP for verification.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*