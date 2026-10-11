---
tc_id: TC-Info-025
title: Verify that all optional profile fields can be empty while saving the profile
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
| Field           | Value   |
| --------------- | ------- |
| Name            | (empty) |
| Email           | (empty) |
| Profile picture | (empty) |
| Passport ID     | (empty) |
| National ID     | (empty) |


# Preconditions
-Customer Logged in &on Edit Profile.
# Steps
1. Open **Edit Profile**.  
2. Clear all optional personal-data fields.  
3. Tap **Save**.
# Expected Result
-The profile is saved successfully without validation errors, all optional fields remain empty, and the required phone information remains unchanged.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*