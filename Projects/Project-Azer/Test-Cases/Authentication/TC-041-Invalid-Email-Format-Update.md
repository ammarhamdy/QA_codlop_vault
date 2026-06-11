---
tc_id: TC-041
title: Attempt to Update Email with Invalid Format
priority: High
status: Ready
type: Functional
linked_requirement: US-XXX
tags:
  - test-case
  - authentication
  - profile-management
  - email-update
  - validation
---

# Test Data
| Field          | Value                 |
| -------------- | --------------------- |
| Current Email  | user@example.com      |
| Invalid Email  | invalid-email-format  |

# Preconditions
- User is logged in and on their profile page.
- The email `user@example.com` is registered and active.

# Steps
1. Log in to the application using `user@example.com` and the correct password.
2. Navigate to the User Profile section.
3. Locate the Email Address field.
4. Enter `invalid-email-format` into the Email Address field.
5. Click the "Save" or "Update Profile" button.

# Expected Result
- An error message is displayed indicating an invalid email format (e.g., "Please enter a valid email address.").
- The email address in the profile remains `user@example.com`.
- The profile update fails.

# Notes
- This test verifies rejection of malformed email formats (e.g., missing '@', domain, or invalid special characters).
