---
tc_id: TC-Register-004
title: Verify registration using an already registered email address with a new phone number
priority:
  - High
status:
  - Draft
type:
  - Functional
linked_requirement: US-001-Beauty-Authentication
tags:
  - test-case
run_result: Fail
---

# Test Data
| Field | Value            |
| ----- | ---------------- |
| name  | fatma            |
| phone | 01273534769      |
| email | fatma@gmail.com, |

# Preconditions
-user has registered account
# Steps
1. Enter a registered email address.  
2. Enter a new phone number.  
3. Enter Valid name
4. Click send OTP 
# Expected Result
-Registration is rejected and a validation message indicates that the email address is already registered.
# Notes

# Attachments
