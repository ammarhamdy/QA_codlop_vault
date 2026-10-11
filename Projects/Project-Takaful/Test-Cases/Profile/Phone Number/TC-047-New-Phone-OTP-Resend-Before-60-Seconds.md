---
tc_id: TC-Phone-047
title: Verify that new-phone OTP resend is unavailable before 60 seconds
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
| Field         | Value |
| ------------- | ----- |
| New Phone OTP | ****  |
|               |       |

# Preconditions
-OTP was sent to the new phone.
# Steps
1. Attempt to resend the OTP before 60 seconds have elapsed.
# Expected Result
-The system prevents the resend request during the 60-second cooldown period, and no new OTP is issued before the cooldown ends.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*