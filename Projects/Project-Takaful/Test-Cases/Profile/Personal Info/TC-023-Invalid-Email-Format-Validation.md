---
tc_id: TC-Info-023
title: Verify that the email field rejects invalid email formats
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
| Field | Value            |
| ----- | ---------------- |
| Email | ahmed@@gmail.com |
| Email | ahmed@gmail      |
| Email | !%&@gmail.com    |

# Preconditions
-Customer is logged in & on edit profile.
# Steps
1. Open **Edit Profile**.  
2. Enter an email with an invalid format.  
3. Click **Save**.
# Expected Result
-The email is rejected with an appropriate validation message, the profile update is not completed, and the previously saved email remains unchanged.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*