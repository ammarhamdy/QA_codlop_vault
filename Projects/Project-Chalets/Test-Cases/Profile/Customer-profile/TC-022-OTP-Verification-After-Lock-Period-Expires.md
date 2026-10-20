---
tc_id: TC-Info-022
title: Verify OTP Verification After the Lock Period Expires
priority:
  - High
status:
  - Draft
type:
  - Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/Role-Profile/Client
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
|       |       |
|       |       |

# Preconditions
-The mobile number is locked due to incorrect attempts.
# Steps
1. Trigger the lock by entering five incorrect OTPs.
2. Wait 15 minutes.
3. Attempt verification using a valid, unexpired OTP.
# Expected Result
-The lock expires after 15 minutes, and verification is allowed subject to OTP validity and system rules.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*