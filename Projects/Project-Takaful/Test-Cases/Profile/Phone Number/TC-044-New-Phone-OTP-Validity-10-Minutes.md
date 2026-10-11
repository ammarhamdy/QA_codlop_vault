---
tc_id: TC-Phone-044
title: Verify that the new-phone OTP is accepted within its 10-minute validity period
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
1. Enter the new-phone OTP within 10 minutes.
# Expected Result
-The OTP is accepted, ownership of the new phone is successfully verified, and both verification stages are completed successfully.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*