---
tc_id: TC-Info-014
title: Verify Rejection of an Incorrect OTP
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
| Field         | Value     |
| ------------- | --------- |
| Old phone     | 512345123 |
| New Ohone     | 554718369 |
| Incorrect OTP | ****      |

# Preconditions
-An OTP has been sent.
# Steps
1. Request an OTP.
2. Enter an incorrect code.
3. Submit the verification.
# Expected Result
-The OTP is rejected, and the mobile number remains unchanged.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*