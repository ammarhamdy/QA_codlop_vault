---
tc_id: TC-Login-025
title: Resend OTP before 60 seconds
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
-OTP has been sent.
# Steps
1. Request OTP.  
2. Immediately check Resend option.
# Expected Result
-Resend OTP action is unavailable until 60 seconds have elapsed.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*