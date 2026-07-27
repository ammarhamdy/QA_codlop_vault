---
tc_id: TC-Login-011
title: Verify phone number with  allowed length
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
| Field | Value |
| ----- | ----- |
|       |       |
|       |       |

# Preconditions
-User is on the Login screen.
# Steps
1. Enter a phone number that exceeds allowed limit and click Send OTP.
2.  Verify the result.  
# Expected Result
-The system validates the phone number length based on the selected country code and displays an error message if the required length is not met.
# Notes

# Attachments
