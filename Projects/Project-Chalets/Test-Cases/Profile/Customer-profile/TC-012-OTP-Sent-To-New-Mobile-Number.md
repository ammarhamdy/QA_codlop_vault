---
tc_id: TC-Info-012
title: Verify OTP Is Sent to the New Mobile Number
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
-The new number is not registered to another account.
# Steps
1. Enter a valid, unregistered number.
2. Request an OTP.
3. Verify the recipient number.
# Expected Result
-The OTP is sent to the new number, not the old number.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*