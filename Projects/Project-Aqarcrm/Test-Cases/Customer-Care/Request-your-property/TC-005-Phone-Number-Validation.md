---
tc_id: TC-Property-Req-005
title: Verify phone number validation
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-003-Request-Your-Property
tags:
  - test-case
run_result: Fail
---

# Test Data
| Field | Value |
| ----- | ----- |
|       |       |
|       |       |

# Preconditions
-User is on the Request Your Property page.
# Steps
1. Enter an invalid phone number such as 12345,  or 012297455415 and submit the form.  
2. Enter a valid Saudi phone number such as **966512345678** and submit the form.
# Expected Result
-The system accepts only valid Saudi phone numbers and displays a validation message for invalid phone numbers.
# Notes

# Attachments
