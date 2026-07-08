---
tc_id: TC-Login-005
title: Verify login with an unregistered email address
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
| Email | fatma555@gmail.com |
|       |                    |

# Preconditions
-User is on Login screen
# Steps
1. Select Email Login.  
2. Enter an unregistered email.  
3. Click "Send OTP".
# Expected Result
-OTP is not sent, and a message is displayed: "Please register first.
# Notes

# Attachments
