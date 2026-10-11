---
tc_id: TC-Info-020
title: Verify that the customer can clear the existing national ID
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
| Field       | Value      |
| ----------- | ---------- |
| National ID | 1457845124 |
|             |            |

# Preconditions
-Customer is logged in with an existing national ID.
# Steps
1. Open **Edit Profile**.  
2. Clear the national ID.  
3. Click **Save**.
# Expected Result
-The national ID is removed successfully, the profile is saved without validation errors, and the national ID remains empty after reopening the profile.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*