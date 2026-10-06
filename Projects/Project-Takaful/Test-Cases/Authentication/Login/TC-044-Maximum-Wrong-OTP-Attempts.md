---
tc_id: TC-Login-044
title: Verify maximum wrong OTP attempts
priority:
  - High
status:
  - Draft
type:
  - Functional
linked_requirement:
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
|       |       |
|       |       |

# Preconditions
-OTP  has been sent.
# Steps
1. Request an OTP.  
2. Enter an incorrect OTP.  
3. Repeat entering an incorrect OTP until the maximum allowed attempts are reached.  
4. Enter another incorrect OTP after reaching the limit.
# Expected Result
-Incorrect OTP is rejected for each attempt until the maximum allowed attempts are reached. After reaching the limit, further OTP verification attempts are blocked and an appropriate validation message is displayed.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*