---
tc_id: TC-045
title: Attempt to Update Email with Excessively Long Value
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
  - boundary
---

# Test Data
| Field          | Value                                                                                                                                                                                                                                                                                    |
| -------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Current Email  | user@example.com                                                                                                                                                                                                                                                                    |
| Long Email     | a{250}@example.com (Total length > 254 characters)                                                                                                                                                                                                                                             |

# Preconditions
- User is logged in and on their profile page.
- The email `user@example.com` is registered and active.

# Steps
1. Log in to the application using `user@example.com` and the correct password.
2. Navigate to the User Profile section.
3. Locate the Email Address field.
4. Enter an email address that exceeds the maximum allowed length of 254 characters.
5. Click the "Save" or "Update Profile" button.

# Expected Result
- An error message is displayed indicating that the email address is too long (e.g., "Email address cannot exceed 254 characters.").
- The email address in the profile remains `user@example.com`.
- The profile update fails.

# Notes
- This test verifies the boundary limit for email address length.
