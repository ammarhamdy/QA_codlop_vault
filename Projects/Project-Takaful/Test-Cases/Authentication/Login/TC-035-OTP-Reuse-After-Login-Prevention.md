---
tc_id: TC-Login-035
title: Verify OTP cannot be reused after successful login
priority:
  - High
status:
  - Draft
type: Security
linked_requirement:
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
|       |       |
|       |       |

# Preconditions
-Valid OTP has been used successfully.
# Steps
1. Login successfully using OTP.  
2. Attempt to reuse the same OTP.
# Expected Result
-The system rejects the previously used OTP and does not allow the customer to log in again using the same OTP.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*