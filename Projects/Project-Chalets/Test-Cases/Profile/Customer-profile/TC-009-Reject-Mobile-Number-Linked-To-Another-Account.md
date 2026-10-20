---
tc_id: TC-Info-009
title: Verify Rejection of a Mobile Number Linked to Another Account
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
| New Ohone | 554718366 |

# Preconditions
-The new number belongs to another account.
# Steps
1. Enter a mobile number registered to another account.
2. Attempt to continue.
# Expected Result
-The system rejects the number and displays "This number is already associated with another account/Existed."
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*