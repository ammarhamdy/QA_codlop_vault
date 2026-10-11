---
tc_id: TC-Phone-041
title: Verify that the previous current-phone OTP becomes invalid after resend
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
-A previous OTP exists and a new OTP has been issued.
# Steps
1. Request **Resend OTP** after 60 seconds.  
2. Enter the previous OTP.  
3. Tap **Continue**.
# Expected Result
-The previous OTP is rejected after the new OTP is issued, current-phone verification does not succeed, and the customer must use the latest OTP.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*