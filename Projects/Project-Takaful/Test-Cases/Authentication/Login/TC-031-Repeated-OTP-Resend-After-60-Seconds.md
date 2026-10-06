---
tc_id: TC-Login-031
title: Resend OTP repeatedly after each 60-second interval
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
-User received OTP & on OTP Screen.
# Steps
1. Request OTP.  
2. Wait 60 seconds.  
3. Resend OTP.  
4. Repeat after another 60 seconds.
# Expected Result
-Each resend is allowed only after the required 60-second interval.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*