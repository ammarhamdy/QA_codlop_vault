---
tc_id: TC-053
title: Successful Full Name Update with Valid Name
priority: High
status: Ready
type: Functional
linked_requirement: US-XXX
tags:
  - test-case
  - authentication
  - profile-management
  - name-update
run_result: pass
---

# Test Data
| Field          | Value                             |
| -------------- | --------------------------------- |
| Current Name   | Ammar Hamdy                       |
| New Name       | Ammar Mohammed Hamdy              |

# Preconditions
- User is logged in and on their profile page.

# Steps
1. Navigate to the User Profile section.
2. Locate the Full Name field.
3. Enter `Ammar Mohammed Hamdy` into the Full Name field.
4. Click the "Save" or "Update Profile" button.

# Expected Result
- A success message is displayed.
- The full name displayed in the profile section is updated to `Ammar Mohammed Hamdy`.

# Notes
- Verifies basic positive flow for name updates.
