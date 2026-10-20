---
tc_id: TC-Info-026
title: Verify Accepting a Valid Saudi National ID Number
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
| National ID | 1745712752 |
|             |            |

# Preconditions
-Customer is logged in and the National ID field is editable.
# Steps
1. Open Edit Profile.
2. Enter the valid National ID.
3. Tap Save.
4. Reopen Edit Profile.
# Expected Result
-The ID is accepted and saved successfully, and the same number is retrieved when reopening the profile.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*