---
tc_id: TC-Login-004
title: Verify login with an unregistered phone number
priority:
  - High
status:
  - Draft
type:
  - Functional
linked_requirement: US-001-Bahrqan-Authentication
tags:
  - test-case
---

# Test Data
| Field        | Value       |
| ------------ | ----------- |
| phone number | 01273534778 |
|              |             |

# Preconditions
-User is on Login screen
# Steps
1. Select country code.  
2. Enter an unregistered phone number.  
3. Select SMS or WhatsApp.  
4. Click "Send OTP".
# Expected Result
-OTP is not sent, and a message is displayed: "Please register first.
# Notes

# Attachments
