---
tc_id: TC-Login-015
title: Verify switching from Phone Login to Email Login
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-001-Beauty-Authentication
tags:
  - test-case
run_result: Pass
---

# Test Data
| Field | Value           |
| ----- | --------------- |
| phone | 01229783542     |
| email | fatma@gmail.com |

# Preconditions
-User has Registered account.
# Steps
1. Select Phone Login.  
2. Enter a valid phone number.  
3. Switch to Email Login.
# Expected Result
-The Email Login field is displayed, allowing the user to enter an email address.
# Notes

# Attachments
