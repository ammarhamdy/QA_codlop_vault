---
tc_id: TC-Phone-045
title: Verify that the new-phone OTP is rejected after 10 minutes
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
-New-phone OTP was sent more than 10 minutes ago.
# Steps
1. Enter the OTP after 10 minutes have elapsed.
# Expected Result
-The OTP is rejected because it has expired, new-phone verification fails, the phone change is not completed, and the existing phone remains unchanged.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*