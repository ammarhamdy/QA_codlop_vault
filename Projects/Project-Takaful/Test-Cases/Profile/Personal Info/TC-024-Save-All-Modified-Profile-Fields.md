---
tc_id: TC-Info-024
title: Verify that all modified valid profile fields are saved together
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
| Field           | Value           |
| --------------- | --------------- |
| Name            | سالم محمود      |
| Email           | Salem@gmail.com |
| Profile picture |                 |

# Preconditions
-Customer is logged in & on edit profile.
# Steps
1. Open **Edit Profile**.  
2. Modify multiple optional fields with valid values.  
3. Click **Save**.
# Expected Result
-All modified valid fields are accepted and saved successfully in the same profile update, and the updated values are displayed correctly when the customer reopens the profile.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*