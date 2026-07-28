---
tc_id: TC-Login-010
title: Verify login with empty OTP
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-001-Aqar-Authentication
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
-The user has entered a valid registered phone number, requested an OTP, and is on the OTP verification page.
# Steps
1. Leave OTP empty & Confirm Login.
# Expected Result
-A validation message is displayed, the login request is rejected, and the user remains on the OTP verification page.
# Notes

# Attachments
