---
tc_id: TC-043
title: Attempt to Update Email with an Empty Value
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
| New Email      |                       |

# Preconditions
- User is logged in and on their profile page.
- The email `user@example.com` is registered and active.

# Steps
1. Log in to the application using `user@example.com` and the correct password.
2. Navigate to the User Profile section.
3. Locate the Email Address field.
4. Clear the Email Address field (making it empty).
5. Click the "Save" or "Update Profile" button.

# Expected Result
- An error message is displayed indicating that the email address is a required field (e.g., "Email address is required.").
- The email address in the profile remains `user@example.com`.
- The profile update fails.

# Notes
- This test verifies that the email field is mandatory and cannot be submitted empty.
