---
tc_id: TC-Login-029
title: Use old OTP after resend
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
4. Enter the old OTP
# Expected Result
-The old OTP is rejected, and a validation message is displayed indicating that the OTP is invalid or expired. The user is not logged in.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*