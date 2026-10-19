---
tc_id: TC-Info-003
title: Verify a One-Character Full Name Cannot Be Saved
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
| Name        | M            |
| Phone       | 512364789    |
| National ID | 145124241245 |
| Image       |              |

# Preconditions
-Customer is logged in current saved name is "Mahmoud ben Ali" Personal Information screen is open.
# Steps
1. Clear the full-name field.
2. Enter M.
3. Tap Save.
4. Reopen the screen.
# Expected Result
-The invalid name is rejected , validation message is shown & name remains Mahmoud ben Ali.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*