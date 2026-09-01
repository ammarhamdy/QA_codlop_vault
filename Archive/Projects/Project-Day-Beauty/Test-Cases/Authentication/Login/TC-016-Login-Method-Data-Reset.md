---
tc_id: TC-Login-016
title: Verify entered data is cleared when switching login methods
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-001-Beauty-Authentication
tags:
  - test-case
run_result: Fail
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
2. Enter a phone number.
3. Switch to Email Login.
4. Return to Phone Login.
# Expected Result
-The previously entered input is cleared, and the fields for the selected login method are displayed empty. 
# Notes

# Attachments
