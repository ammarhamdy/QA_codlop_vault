---
tc_id: TC-Register-006
title: Verify registration using an already registered email address and an already registered phone number
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-001-Bahrqan-Authentication
tags:
  - test-case
run_result: Pass
---

# Test Data
| Field | Value            |
| ----- | ---------------- |
| name  | fatma            |
| phone | 01229743841      |
| email | fatma@gmail.com, |

# Preconditions
user has registered account
# Steps
1. Enter a registered email address & phone.  
2. Enter Valid name
3. Click send OTP 
# Expected Result
Registration is rejected and the user is informed that the account already exists.
# Notes

# Attachments
