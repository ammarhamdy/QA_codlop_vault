---
tc_id: TC-Phone-037
title: Verify that the current-phone OTP is rejected after 10 minutes
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
-OTP was sent more than 10 minutes ago.
# Steps
1. Enter the OTP after 10 minutes have elapsed.
# Expected Result
-The OTP is rejected because it has expired, current-phone verification fails, the customer cannot proceed, and the existing phone number remains unchanged.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*