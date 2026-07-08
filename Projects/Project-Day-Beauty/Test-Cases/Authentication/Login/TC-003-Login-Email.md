---
tc_id: TC-Login-003
title: Verify login using registered Email
priority:
  - High
status:
  - Draft
type:
  - Functional
linked_requirement: US-001-Beauty-Authentication
tags:
  - test-case
---

# Test Data
| Field | Value              |
| ----- | ------------------ |
| Email | Fatma112@gmail.com |
|       |                    |

# Preconditions
-User has a registered account
# Steps
1. Open Login screen.  
2. Select Login with Email.  
3. enter valid registered email.  
4. Click "Send OTP".  
5. Enter the received valid OTP.  
6. Click Login
# Expected Result
-User is successfully logged in and redirected to the Home screen.
# Notes

# Attachments
