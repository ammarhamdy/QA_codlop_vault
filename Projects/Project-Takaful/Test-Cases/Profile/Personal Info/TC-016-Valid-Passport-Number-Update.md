---
tc_id: TC-Info-016
title: Verify that the customer can update the passport number with valid data
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
| Field           | Value      |
| --------------- | ---------- |
| Passport Number | `A1234567` |
|                 |            |

# Preconditions
-Customer is logged in & on edit profile.
# Steps
1. Open **Edit Profile**.  
2. Enter a valid passport number.  
3. Click **Save**.
# Expected Result
-The passport number is accepted according to the defined validation rules, the profile is updated successfully, and the new passport number remains displayed after reopening the profile.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*