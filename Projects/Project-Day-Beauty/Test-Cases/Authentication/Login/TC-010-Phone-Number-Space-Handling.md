---
tc_id: TC-Login-010
title: Phone Number Space Handling
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
| Field | Value |
| ----- | ----- |
|       |       |
|       |       |

# Preconditions
-User is on the Login screen.
# Steps
1. Enter a valid phone number with **leading spaces** and click Send OTP.  
2. Verify the result.  
3. Enter a valid phone number with **trailing spaces** and click Send OTP.
# Expected Result
-The system trims the leading and trailing spaces automatically
# Notes

# Attachments
