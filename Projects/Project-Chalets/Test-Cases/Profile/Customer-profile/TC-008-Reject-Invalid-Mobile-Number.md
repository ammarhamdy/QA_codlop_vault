---
tc_id: TC-Info-008
title: Verify Rejection of an Invalid Mobile Number
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
| Field     | Value             |
| --------- | ----------------- |
| Old phone | 512345123         |
| New Ohone | 55122244444444424 |

# Preconditions
-User is logged in.
# Steps
1. Open Change Mobile Number.
2. Enter an invalid mobile number.
3. Attempt to request an OTP.
# Expected Result
-The number is rejected, and no OTP is sent.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*