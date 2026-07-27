---
tc_id: TC-OTP-005
title: Verify multiple invalid OTP attempts
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-001-Bahrqan-Authentication
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
-Invalid OTP
# Steps
1. Request an OTP.
2. Enter an invalid OTP multiple times.
3. Click Verify after each attempt.
# Expected Result
-The system handles repeated invalid attempts according to the defined business rules.
# Notes

# Attachments
