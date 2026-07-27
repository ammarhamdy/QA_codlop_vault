---
tc_id: TC-Login-002
title: Verify login using registered phone number via SMS
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
| Field        | Value       |
| ------------ | ----------- |
| phone number | 01229743841 |
|              |             |

# Preconditions
-User has a registered account
# Steps
1. Open Login screen.  
2. Select country code & Enter registered phone number..  
3. Select SMS as OTP delivery method.  
4. Click "Send OTP".  
5. Enter the received valid OTP.  
6. Click Login
# Expected Result
-User is successfully logged in and redirected to the Home screen.
# Notes

# Attachments
