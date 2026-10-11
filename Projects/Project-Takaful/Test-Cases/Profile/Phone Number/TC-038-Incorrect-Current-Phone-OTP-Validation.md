---
tc_id: TC-Phone-038
title: Verify that incorrect current-phone OTP prevents progression
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
1. Enter an incorrect OTP.
# Expected Result
-The OTP is rejected with an appropriate validation message, the customer cannot proceed to new-phone verification, and the existing phone number remains unchanged.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*