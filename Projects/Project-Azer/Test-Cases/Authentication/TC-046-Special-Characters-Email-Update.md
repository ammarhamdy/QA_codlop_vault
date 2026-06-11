---
tc_id: TC-046
title: Attempt to Update Email with Invalid Special Characters
priority: Medium
status: Ready
type: Functional
linked_requirement: US-XXX
tags:
  - test-case
  - authentication
  - profile-management
  - email-update
  - validation
  - special-characters
---

# Test Data
| Field          | Value                       |
| -------------- | --------------------------- |
| Current Email  | user@example.com            |
| Invalid Email  | user..name@example.com      |

# Preconditions
- User is logged in and on their profile page.
- The email `user@example.com` is registered and active.

# Steps
1. Log in to the application using `user@example.com` and the correct password.
2. Navigate to the User Profile section.
3. Locate the Email Address field.
4. Enter an email with invalid special characters (e.g., consecutive dots: `user..name@example.com`).
5. Click the "Save" or "Update Profile" button.

# Expected Result
- An error message is displayed indicating an invalid email format (e.g., "Please enter a valid email address.").
- The email address in the profile remains `user@example.com`.
- The profile update fails.

# Notes
- This test verifies that the system rejects malformed emails containing invalid special character sequences (like consecutive dots).
