---
tc_id: TC-Phone-057
title: Verify that only one OTP is sent within 60 seconds
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
-Customer is logged in to the same account on Device A and Device B.
# Steps

1. On Device A, click on more then edit profile .
2.  Click on change phone number &Enter a valid new phone number.
3. Request the OTP to verify the current phone number.
4. Within 60 seconds, on Device B click on more then edit profile.
5.  Click on change phone number &Enter a valid new phone number.
6. Request the OTP to verify the current phone number.
7. Check the OTP messages received.
# Expected Result
-Only one OTP is sent within the 60-second period. The OTP request from Device B is rejected, and no second OTP is sent.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*