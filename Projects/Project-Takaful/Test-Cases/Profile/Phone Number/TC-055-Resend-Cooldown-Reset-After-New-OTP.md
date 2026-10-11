---
tc_id: TC-Phone-055
title: Verify that the resend cooldown is reset after each new OTP is issued
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
-OTP has been resent once.
# Steps
1. Request a new OTP.  
2. Attempt another resend before 60 seconds.  
3. Attempt again after 60 seconds.
# Expected Result
-The second resend is unavailable during the new 60-second cooldown and becomes available only after 60 seconds from the latest OTP issuance.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*