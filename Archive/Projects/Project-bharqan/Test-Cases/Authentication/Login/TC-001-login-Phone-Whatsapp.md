---
tc_id: TC-login-001
title: Verify login using registered phone number via WhatsApp OTP
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
2. Select country code & Enter registered phone number. 
3. Click "Send OTP".  
4. Enter the received valid OTP.  
5. Click Login
# Expected Result
-User is successfully logged in and redirected to the Home screen.
# Notes

# Attachments
