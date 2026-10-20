---
tc_id: TC-Info-013
title: Verify Mobile Number Change with a Valid OTP
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
| Field     | Value     |
| --------- | --------- |
| Old phone | 512345123 |
| New Ohone | 554718369 |
| OTP       | ****      |

# Preconditions
-An OTP has been sent to the new number.
# Steps
1. Enter a valid, unregistered number.
2. Request an OTP.
3. Enter the correct OTP within five minutes.
4. Submit the verification.
# Expected Result
-The OTP is accepted, and the login mobile number is updated.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*