---
tc_id: TC-Info-007
title: Verify Successful Mobile Number Change
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

# Preconditions
-User is logged in with an existing mobile number.
# Steps
1. Open My Account.
2. Select Change Mobile Number.
3. Enter a valid, unregistered mobile number.
4. Request an OTP.
5. Enter the correct OTP and submit.
# Expected Result
-The login mobile number is updated, and an SMS notification is sent to the old number.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*