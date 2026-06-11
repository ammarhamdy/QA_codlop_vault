---
tc_id: TC-054
title: Attempt to Update Name with Empty Value
priority: High
status: Ready
type: Functional
linked_requirement: US-XXX
tags:
  - test-case
  - authentication
  - profile-management
  - name-update
  - validation
---

# Test Data
| Field          | Value               |
| -------------- | ------------------- |
| Current Name   | Ammar Hamdy         |
| New Name       |                     |

# Preconditions
- User is logged in and on their profile page.

# Steps
1. Navigate to the User Profile section.
2. Clear the Full Name field.
3. Click the "Save" or "Update Profile" button.

# Expected Result
- An error message is displayed indicating that the name is a required field.
- The name in the profile remains `Ammar Hamdy`.
- The profile update fails.

# Notes
- Verifies that the name field is mandatory.
