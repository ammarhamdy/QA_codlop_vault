---
tc_id: TC-Login-032
title: Verify resend OTP timer resets after each resend
priority:
  - Medium
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
1. Request the first OTP.  
2. Wait until 60 seconds have elapsed.  
3. Click **Resend OTP**.  
4. Observe the resend timer.  
5. Wait until another 60 seconds have elapsed.  
6. Click **Resend OTP** again.  
7. Observe the resend timer.
# Expected Result
-The 60-second resend timer starts again from 60 seconds after each OTP resend, and the "Resend OTP" option remains unavailable until the 60 seconds have elapsed.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*