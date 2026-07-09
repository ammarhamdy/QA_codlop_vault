---
tc_id: TC-OTP-002
title: Verify error message for invalid OTP
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
--Valid registered phone/email (Login) or valid registration data (Registration).
# Steps
1. Request an OTP.  
2. Enter an incorrect OTP.  
3. Click Verify.
# Expected Result
-An appropriate error message is displayed and verification is rejected.
# Notes

# Attachments
