---
tc_id: TC-048
title: Attempt to Update Email with Unicode Characters
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
  - unicode
---

# Test Data
| Field          | Value                      |
| -------------- | -------------------------- |
| Current Email  | user@example.com           |
| Unicode Email  | 用户@example.com           |

# Preconditions
- User is logged in and on their profile page.
- The email `user@example.com` is registered and active.

# Steps
1. Log in to the application using `user@example.com` and the correct password.
2. Navigate to the User Profile section.
3. Locate the Email Address field.
4. Enter an email address containing Unicode characters (e.g., `用户@example.com`).
5. Click the "Save" or "Update Profile" button.

# Expected Result
- (Depending on implementation) The system should either successfully update the email if Internationalized Email Addresses (EAI) are supported, or display a validation error if only ASCII is permitted.
- If rejected: An error message is displayed indicating an invalid email format.
- The system should not crash or encounter encoding errors.

# Notes
- This test verifies the system's handling of non-ASCII characters in the email field.
