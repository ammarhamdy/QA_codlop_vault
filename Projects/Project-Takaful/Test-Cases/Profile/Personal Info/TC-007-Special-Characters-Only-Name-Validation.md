---
tc_id: TC-Info-007
title: Verify that the name field rejects a name containing only special characters
priority:
  - Medium
status:
  - Draft
type:
  - Functional
linked_requirement: Edit Profile
tags:
  - test-case
---

# Test Data
| Field | Value     |
| ----- | --------- |
| Name  | @!~*&^%$$ |
|       |           |

# Preconditions
-Customer is logged in & on edit profile.
# Steps
1. Open **Edit Profile**.  
2. Enter special characters only in the name field.  
3. Click **Save**.
# Expected Result
-The name is rejected with an appropriate validation message, the profile update is not completed, and the previously saved name remains unchanged.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*