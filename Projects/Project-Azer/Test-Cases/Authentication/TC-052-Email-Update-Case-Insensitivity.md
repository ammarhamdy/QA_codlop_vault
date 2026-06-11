---
tc_id: TC-052
title: Verify Case Insensitivity in Email Update
priority: Medium
status: Ready
type: Functional
linked_requirement: US-XXX
tags:
  - test-case
  - authentication
  - profile-management
  - email-update
  - case-sensitivity
---

# Test Data
| Field          | Value                      |
| -------------- | -------------------------- |
| Current Email  | user@example.com           |
| New Email      | USER@EXAMPLE.COM           |

# Preconditions
- User is logged in and on their profile page.
- The email `user@example.com` is registered and active.

# Steps
1. Navigate to the User Profile section.
2. Update the Email Address to `USER@EXAMPLE.COM`.
3. Click the "Save" or "Update Profile" button.
4. Verify the stored email.

# Expected Result
- The system should treat `user@example.com` and `USER@EXAMPLE.COM` as the same email.
- The system should either:
    - Reject the update as "Email already in use" (treating it as the same email).
    - Accept the update but store it in a consistent case (usually lowercase).
- The user should be able to log in using either case.

# Notes
- This test verifies that the system handles email addresses case-insensitively to prevent duplicate accounts with different casing.
