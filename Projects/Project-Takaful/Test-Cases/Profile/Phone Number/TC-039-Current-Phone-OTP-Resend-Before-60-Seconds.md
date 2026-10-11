---
tc_id: TC-Phone-039
title: Verify that current-phone OTP resend is unavailable before 60 seconds
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
| Field                       | Value |
| --------------------------- | ----- |
| OTP on Current Phone Number | ****  |
|                             |       |

# Preconditions
-OTP was sent to the current phone.
# Steps
1. Attempt to resend the OTP before 60 seconds have elapsed.
# Expected Result
-The system prevents the resend request during the 60-second cooldown period, and no new OTP is issued before the cooldown ends.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*