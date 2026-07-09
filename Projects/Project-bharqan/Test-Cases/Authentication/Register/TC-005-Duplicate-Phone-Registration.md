---
tc_id: TC-Register-005
title: Verify registration using an already registered phone with a new email
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
| Field | Value           |
| ----- | --------------- |
| name  | fatma           |
| phone | 01229743841     |
| email | eman@gmail.com, |

# Preconditions
user has registered account
# Steps
1. Enter a registered phone number.  
2. Enter a new email.  
3. Enter Valid name
4. Click send OTP 
# Expected Result
Registration is rejected and a validation message indicates that the phone number is already registered.
# Notes

# Attachments
