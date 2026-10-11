---
tc_id: TC-Info-006
title: Verify that the customer can clear the existing name
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
| Field | Value          |
| ----- | -------------- |
| Nmae  | "سالم الهاشمي" |
|       |                |

# Preconditions
-Customer is logged in with an existing saved name.`
# Steps
1. Open Edit Profile.
2. Clear name.  
3. Click Save.
# Expected Result
-The existing name is removed successfully, the profile is saved without a validation error, and the name remains empty after reopening **Edit Profile**.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*