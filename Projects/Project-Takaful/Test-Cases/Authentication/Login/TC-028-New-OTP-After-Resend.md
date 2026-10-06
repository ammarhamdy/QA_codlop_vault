---
tc_id: TC-Login-028
title: Verify new OTP after resend
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
-OTP has been resent.
# Steps
1. Request first OTP.  
2. Wait 60 seconds.  
3. Resend OTP.  
4. Enter the new OTP.
# Expected Result
-New OTP is accepted if valid and within its validity period.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*