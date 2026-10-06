---
tc_id: TC-Login-002
title: Enter a valid Saudi phone number
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: REQ-TAKAFUL-AUTH-001-Customer-Login-Redirection
tags:
  - test-case
---

# Test Data
| Field        | Value     |
| ------------ | --------- |
| Code         | `+966`    |
| Phone Number | 512345678 |

# Preconditions
-Login screen is displayed.
# Steps
1. Enter a valid Saudi phone number starting with `5` and containing 9 digits in the Phone Number field.

# Expected Result
-Phone number is accepted as valid.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*