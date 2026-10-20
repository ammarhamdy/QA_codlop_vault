---
tc_id: TC-Info-021
title: Verify Mobile Number Lock After Five Incorrect OTP Attempts
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
-An OTP has been issued.
# Steps
1. Request an OTP.
2. Enter an incorrect OTP five times.
3. Attempt verification again.
# Expected Result
-The system locks verification for the mobile number for 15 minutes after five incorrect attempts.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*