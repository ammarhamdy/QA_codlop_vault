---
tc_id: TC-050
title: Attempt XSS Injection in Email Update Field
priority: High
status: Ready
type: Security
linked_requirement: US-XXX
tags:
  - test-case
  - authentication
  - profile-management
  - email-update
  - security
  - xss
---

# Test Data
| Field          | Value                                                                 |
| -------------- | --------------------------------------------------------------------- |
| Current Email  | user@example.com                                                      |
| Payload Email  | <script>alert('XSS')</script>@example.com                             |

# Preconditions
- User is logged in and on their profile page.
- The email `user@example.com` is registered and active.

# Steps
1. Log in to the application using `user@example.com` and the correct password.
2. Navigate to the User Profile section.
3. Locate the Email Address field.
4. Enter an XSS payload (e.g., `<script>alert('XSS')</script>@example.com`) into the Email Address field.
5. Click the "Save" or "Update Profile" button.

# Expected Result
- The system should reject the input as an invalid email format.
- If the input is saved (which it shouldn't be), the script must be properly encoded and not execute when the profile is viewed.
- No alert box or unexpected script execution occurs.
- The email address in the profile remains `user@example.com`.

# Notes
- This test verifies that the system performs proper input validation and output encoding to prevent Cross-Site Scripting.
