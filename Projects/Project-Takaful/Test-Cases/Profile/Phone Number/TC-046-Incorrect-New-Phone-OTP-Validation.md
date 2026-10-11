---
tc_id: TC-Phone-046
title: Verify that incorrect new-phone OTP prevents phone change
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
1. Enter an incorrect OTP.
# Expected Result
-The OTP is rejected with an appropriate validation message, the phone change is not completed, and the existing phone number remains unchanged.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*