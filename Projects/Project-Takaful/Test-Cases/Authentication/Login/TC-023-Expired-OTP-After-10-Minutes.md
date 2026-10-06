---
tc_id: TC-Login-023
title: Verify expired OTP after 10 minutes
priority:
  - High
status:
  - Draft
type:
  - Functional
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
-OTP has been sent more than 10 minutes ago.
# Steps
1. Wait until more than 10 minutes have elapsed.  
2. Enter the original OTP.  
# Expected Result
-OTP is rejected as expired and login does not succeed.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*