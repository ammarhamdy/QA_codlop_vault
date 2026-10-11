---
tc_id: TC-Phone-040
title: Verify that the customer can resend the current-phone OTP after 60 seconds
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
| Field                           | Value |
| ------------------------------- | ----- |
| OTP on Current Phone Number     | ****  |
| New OTP on Current Phone Number |       |

# Preconditions
-OTP was sent and 60 seconds have elapsed.
# Steps
1. Wait until 60 seconds have elapsed.  
2. Tap **Resend OTP**.  
3. Check the current phone.
# Expected Result
-A new OTP is sent successfully after the 60-second cooldown period, and the customer can use the newly issued OTP for verification.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*