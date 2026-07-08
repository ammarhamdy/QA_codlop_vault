---
tc_id: TC-OTP-003
title: Verify expired OTP cannot be used
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
-Valid registered phone/email (Login) or valid registration data (Registration).
# Steps
1. Request an OTP.  
2. Wait until it expires.  
3. Enter the expired OTP.  
4. Click Verify.
# Expected Result
-The expired OTP is rejected and an appropriate error message is displayed.
# Notes

# Attachments
