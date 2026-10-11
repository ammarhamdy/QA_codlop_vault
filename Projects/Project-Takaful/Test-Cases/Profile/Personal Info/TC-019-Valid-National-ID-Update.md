---
tc_id: TC-Info-019
title: Verify that the customer can update the national ID with valid data
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
-Customer is logged in & on edit profile.
# Steps
1. Open **Edit Profile**.  
2. Enter a valid national ID.  
3. Click **Save**.
# Expected Result
-The national ID is accepted according to the defined validation rules, the profile is updated successfully, and the new national ID remains displayed after reopening the profile.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*