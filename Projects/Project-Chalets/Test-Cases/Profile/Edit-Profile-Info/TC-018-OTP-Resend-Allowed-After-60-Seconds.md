---
tc_id: TC-Info-018
title: Verify OTP Resend Is Allowed After 60 Seconds
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
-The resend interval has elapsed, and no sending limit has been exceeded.
# Steps
1. Request an OTP.
2. Wait 60 seconds.
3. Request another OTP.
# Expected Result
-The system allows the resend request.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*