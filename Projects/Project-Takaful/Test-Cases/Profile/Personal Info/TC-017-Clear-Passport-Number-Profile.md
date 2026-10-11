---
tc_id: TC-Info-017
title: Verify that the customer can clear the existing passport number
priority:
  - High
status:
  - Draft
type:
  - Functional
linked_requirement: Edit Profile
tags:
  - test-case
---

# Test Data
| Field           | Value      |
| --------------- | ---------- |
| Passport Number | `A1234567` |
|                 |            |

# Preconditions
-Customer is logged in with an existing passport number.
# Steps
1. Open **Edit Profile**.  
2. Clear the passport number.  
3. Click **Save**.
# Expected Result
-The passport number is removed successfully, the profile is saved without validation errors, and the passport number remains empty after reopening the profile.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*