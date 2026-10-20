---
tc_id: TC-Info-002
title: Verify the Customer Can Save a Valid New Name
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
| Field       | Value           |
| ----------- | --------------- |
| Name        | Mahmoud ben Ali |
| Phone       | 512364789       |
| National ID | 145124241245    |
| Image       |                 |

# Preconditions
- User has an active account and is logged in & is on the Edit Profile screen.
# Steps
1. Replace the existing name with Omar Hassan.
2. Tap Save.
# Expected Result
-The valid name is accepted and saved & other fields remains unchanged.

# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*