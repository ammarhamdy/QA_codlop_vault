---
tc_id: TC-Register-002
title: Verify successful registration using SMS
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-001-Bahrqan-Authentication
tags:
  - test-case
run_result: Fail
---

# Test Data
| Field | Value            |
| ----- | ---------------- |
| name  | fatma            |
| phone | 0119871564       |
| email | fatma@gmail.com, |

# Preconditions
-User is on the Register screen
# Steps
1. Enter valid registration data.  
2. Select SMS as the OTP delivery method.  
3. Click Register.
# Expected Result
Registration request is submitted and OTP is sent via SMS.
# Notes

# Attachments
