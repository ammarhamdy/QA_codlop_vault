---
tc_id: TC-Login-011
title: Verify Resend OTP button state based on the timer
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
-The user is on the OTP verification page after requesting an OTP.
# Steps
1. Attempt to click **Resend OTP** before the timer expires.  
2. Wait until the timer expires.  
3. Click **Resend OTP**.
# Expected Result
-The Resend OTP button remains disabled before the timer expires and becomes enabled after the timer expires, allowing the user to request a new OTP
# Notes

# Attachments
