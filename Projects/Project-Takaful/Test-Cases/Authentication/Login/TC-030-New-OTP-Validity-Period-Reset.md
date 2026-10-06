---
tc_id: TC-Login-030
title: Verify new OTP has a new validity period
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
1. Request OTP.  
2. Wait 60 seconds.  
3. Resend OTP.  
4. Verify the new OTP within its validity period.
# Expected Result
-New OTP is valid according to its own 10-minute validity period.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*