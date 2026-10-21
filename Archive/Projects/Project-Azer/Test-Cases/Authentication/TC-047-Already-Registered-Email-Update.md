---
tc_id: TC-047
title: Attempt to Update Email to an Already Registered Email
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
  - duplicate
run_result: pass
---

# Test Data
| Field          | Value                      |
| -------------- | -------------------------- |
| Current Email  | user1@example.com          |
| Registered Email| user2@example.com          |

# Preconditions
- Two active accounts exist: `user1@example.com` and `user2@example.com`.
- User is logged in as `user1@example.com`.

# Steps
1. Log in to the application using `user1@example.com` and the correct password.
2. Navigate to the User Profile section.
3. Locate the Email Address field.
4. Enter `user2@example.com` (which is already registered to another user).
5. Click the "Save" or "Update Profile" button.

# Expected Result
- An error message is displayed indicating that the email address is already in use (e.g., "This email address is already registered.").
- The email address in the profile remains `user1@example.com`.
- The profile update fails.

# Notes
- This test ensures that email addresses remain unique across the system.
