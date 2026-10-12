---
tc_id: TC-Login-007
title: Verify phone number length validation
priority:
  - High
  - Low
status:
  - Ready
type:
  - Functional
linked_requirement: US-001-Aqar-Authentication
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
-User is on the Login page
# Steps
1. Enter a phone number shorter than the minimum allowed length and click Confirm &Send OTP.  
2. Enter a phone number with the valid allowed length and click Confirm &Send OTP.    
3. Enter a phone number longer than the maximum allowed length and click Confirm &Send OTP.
# Expected Result
-The system validates the phone number length correctly, accepts only valid phone numbers, displays validation messages for invalid lengths, and sends the OTP only for valid phone numbers.
# Notes

# Attachments
