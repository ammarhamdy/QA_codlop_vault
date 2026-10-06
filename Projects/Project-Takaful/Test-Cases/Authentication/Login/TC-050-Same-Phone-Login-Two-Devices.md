---
tc_id: TC-Login-050
title: Login using the same phone number from two devices at nearly the same time
priority:
  - High
status:
  - Draft
type:
  - Functional
linked_requirement:
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
|       |       |
|       |       |

# Preconditions
-Same phone number can have multiple independent sessions.
# Steps
1. Open the Login screen on Device A and Device B.
2. Enter the same phone number on both devices.
3. Request OTP on both devices at nearly the same time.
4. Enter the OTP received for each login request on the corresponding device.
# Expected Result
-Each login request is handled independently. A valid OTP for each request authenticates the corresponding device, and both devices remain logged in with independent sessions.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*