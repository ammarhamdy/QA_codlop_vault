---
tc_id: TC-Info-026
title: Verify that one invalid field prevents an otherwise valid multi-field update
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
| Field       | Value       |
| ----------- | ----------- |
| Name        | سالم محمود  |
| Email       | Salem@gmail |
| Passport ID | A74512441   |
| National ID | 1239745687  |

# Preconditions
-Customer is logged in with saved profile data.
# Steps
1. Open **Edit Profile**.  
2. Enter valid values in multiple fields.  
3. Enter an invalid value in one field.  
4. Tap **Save**.
# Expected Result
-The invalid field is rejected with a validation message, the profile update is not completed, and previously saved profile data is not partially overwritten by the submitted values.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*