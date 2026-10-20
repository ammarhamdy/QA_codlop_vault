---
tc_id: TC-Info-028
title: Verify National ID Length Validation
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
| Field       | Value              |
| ----------- | ------------------ |
| National ID | 1234567            |
| National ID | 124754544532232354 |

# Preconditions
-Customer is logged in .
# Steps
1. open edit profile.
2. enter national ID exceeds or less than maximum allowed length.
3. click save.
# Expected Result
-The system should accept a National ID containing exactly 10 digits and reject values containing fewer or more than 10 digits, displaying an appropriate validation message for invalid lengths.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*