---
tc_id: TC-Del-002
title: Verify login with a deleted phone number
priority:
  - High
status:
  - Draft
type:
  - Functional
linked_requirement: US-001-Aqar-Authentication
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
|       |       |
|       |       |

# Preconditions
-The account associated with the phone number has been deleted.
# Steps
1. Open the Login page.  
2. Enter the deleted phone number.  
3. Request an OTP.  
4. Enter the correct OTP.
# Expected Result
-A new account is created successfully, the user is logged in, and redirected to the Home page.
# Notes

# Attachments
