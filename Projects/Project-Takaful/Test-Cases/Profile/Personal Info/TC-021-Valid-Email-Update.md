---
tc_id: TC-Info-021
title: Verify that the customer can update email with a valid email address
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
| Field | Value           |
| ----- | --------------- |
| Email | Ahmed@gmail.com |
|       |                 |

# Preconditions
-Customer is logged in & on edit profile.
# Steps
1. Open **Edit Profile**.  
2. Enter a valid email address.  
3. Click **Save**.
# Expected Result
-The email address is accepted without validation errors, the profile is updated successfully, and the new email address remains displayed after reopening the profile.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*