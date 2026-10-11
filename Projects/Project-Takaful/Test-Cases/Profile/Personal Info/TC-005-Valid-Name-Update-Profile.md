---
tc_id: TC-Info-005
title: Verify that the customer can update the name with a valid value
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
| Name  | "سالم الهاشمي" |
|       |                |

# Preconditions
-Customer Logged in &on Edit Profile.
# Steps
1. Enter valid name.  
2. Click Save.
# Expected Result
-The new name is accepted without validation errors, the profile is updated successfully, and the new name is displayed when the customer reopens **Edit Profile**.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*