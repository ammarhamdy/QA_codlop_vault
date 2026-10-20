---
tc_id: TC-Info-005
title: Verify Full Name Is Required
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
| Field       | Value        |
| ----------- | ------------ |
| Name        |              |
| Phone       | 512364789    |
| National ID | 145124241245 |
| Image       | -            |

# Preconditions
-Customer is logged in ,current saved name is "Ahmed Ali", Personal Information screen is open.
# Steps
1. Delete the current name.
2. Tap Save.
3. Reopen the screen.
# Expected Result
- The empty name is rejected.
- The customer is informed that a valid name is required.
- The previously saved name remains unchanged.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*