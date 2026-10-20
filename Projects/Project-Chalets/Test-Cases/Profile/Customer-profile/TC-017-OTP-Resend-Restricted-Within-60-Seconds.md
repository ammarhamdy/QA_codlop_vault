---
tc_id: TC-Info-017
title: OTP-Resend-Restricted-Within-60-Seconds
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
-An OTP was just sent.
# Steps
1. Request an OTP.
2. Attempt to resend it before 60 seconds have elapsed.
# Expected Result
-The system prevents resending before 60 seconds have elapsed.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*