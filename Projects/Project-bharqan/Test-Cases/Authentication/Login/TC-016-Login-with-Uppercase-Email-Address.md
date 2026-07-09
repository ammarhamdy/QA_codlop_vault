---
tc_id: TC-Login-016
title: Verify Email Case Insensitivity During Login
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
| Field | Value           |
| ----- | --------------- |
| email | FATMA@GMAIL.COM |
|       |                 |

# Preconditions
-User is on the Login screen.
# Steps
1. Enter FATMA@GMAIL.COM in email field.
2. click send OTP
# Expected Result
-The system accepts the email address regardless of letter case.
# Notes

# Attachments
