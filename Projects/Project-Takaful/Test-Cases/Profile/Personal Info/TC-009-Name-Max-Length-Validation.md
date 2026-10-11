---
tc_id: TC-Info-009
title: Verify that the name field rejects a value exceeding the maximum allowed length
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
| Field | Value                  |
| ----- | ---------------------- |
| Name  | Ahmed................. |
|       |                        |

# Preconditions
-Customer is logged in & on edit profile.
# Steps
1. Open **Edit Profile**.  
2. Enter a name that exceeds the maximum allowed length.  
3. Click **Save**.
# Expected Result
-The name exceeding the maximum allowed length is rejected with an appropriate validation message, the profile update is not completed, and the previously saved name remains unchanged.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*