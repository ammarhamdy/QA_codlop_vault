---
tc_id: TC-Phone-036
title: Verify that the current-phone OTP is accepted within its 10-minute validity period
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
1. Enter the received OTP within 10 minutes.
# Expected Result
-The OTP is accepted, current-phone ownership is successfully verified, and the customer proceeds to the new-phone verification stage.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*