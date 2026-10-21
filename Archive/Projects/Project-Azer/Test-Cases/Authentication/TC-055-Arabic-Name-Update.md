---
tc_id: TC-055
title: Update Name with Arabic Characters
priority: High
status: Ready
type: Functional
linked_requirement: US-XXX
tags:
  - test-case
  - authentication
  - profile-management
  - name-update
  - unicode
  - arabic
run_result: pass
---

# Test Data
| Field          | Value                             |
| -------------- | --------------------------------- |
| Current Name   | Ammar Hamdy                       |
| New Name       | عمار حمدي                           |

# Preconditions
- User is logged in and on their profile page.

# Steps
1. Navigate to the User Profile section.
2. Enter `عمار حمدي` into the Full Name field.
3. Click the "Save" or "Update Profile" button.

# Expected Result
- A success message is displayed.
- The full name is updated and displayed correctly as `عمار حمدي` (no encoding issues).

# Notes
- Verifies support for Arabic and Unicode characters in the name field.
