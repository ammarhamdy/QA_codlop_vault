---
tc_id: TC-Info-029
title: Verify Rejecting Alphabetic Characters in the National ID Field
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
| Field       | Value      |
| ----------- | ---------- |
| National ID | 1234D4567E |
|             |            |

# Preconditions
-Customer is logged in .
# Steps
1. open edit profile.
2. enter national ID containing characters.
3. click save.
# Expected Result
-The system should reject alphabetic characters in the National ID field and display an appropriate validation message.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*