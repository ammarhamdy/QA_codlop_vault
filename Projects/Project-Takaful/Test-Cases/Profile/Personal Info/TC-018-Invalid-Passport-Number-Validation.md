---
tc_id: TC-Info-018
title: Verify that an invalid passport number is rejected
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
| Field           | Value                      |
| --------------- | -------------------------- |
| Passport Number | `Ayrejjdjeeoeo`/@#!1223454 |
|                 |                            |

# Preconditions
-Customer is logged in & on edit profile.
# Steps
1. Open **Edit Profile**.  
2. Enter an invalid passport number.  
3. Tap **Save**.
# Expected Result
-The invalid passport number is rejected with an appropriate validation message, the profile is not updated with the invalid value, and the previously saved passport number remains unchanged.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*