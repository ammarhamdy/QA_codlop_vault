---
tc_id: TC-Login-043
title: Verify maximum OTP resend limit
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
2. Wait 60 seconds.  
3. Click **Resend OTP**.  
4. Repeat the resend process after every 60 seconds until the maximum allowed attempts are reached.  
5. Attempt to resend the OTP again after reaching the limit.
# Expected Result
-OTP is resent successfully until the maximum allowed attempts are reached. After reaching the limit, further resend requests are blocked and an appropriate validation message is displayed.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*