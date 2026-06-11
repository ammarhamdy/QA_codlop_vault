---
tc_id: TC-044
title: Attempt to Update Email with Leading/Trailing Spaces
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
  - spaces
---

# Test Data
| Field          | Value                            |
| -------------- | -------------------------------- |
| Current Email  | user@example.com                 |
| New Email      |   spaced.email@example.com       |

# Preconditions
- User is logged in and on their profile page.
- The email `user@example.com` is registered and active.

# Steps
1. Log in to the application using `user@example.com` and the correct password.
2. Navigate to the User Profile section.
3. Locate the Email Address field.
4. Enter `  spaced.email@example.com  ` into the Email Address field (including leading and trailing spaces).
5. Click the "Save" or "Update Profile" button.

# Expected Result
- A success message is displayed (e.g., "Profile updated successfully.").
- The email address displayed in the profile section is updated to `spaced.email@example.com` (without leading/trailing spaces).
- The system correctly trims leading and trailing spaces from the email input.

# Notes
- This test verifies that the email input is sanitized for leading and trailing whitespace before validation and saving.
