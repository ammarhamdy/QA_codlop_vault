---
tc_id: TC-049
title: Attempt SQL Injection in Email Update Field
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
  - sqli
---

# Test Data
| Field          | Value                                                                 |
| -------------- | --------------------------------------------------------------------- |
| Current Email  | user@example.com                                                      |
| Payload Email  | ' OR '1'='1' -- @example.com                                          |

# Preconditions
- User is logged in and on their profile page.
- The email `user@example.com` is registered and active.

# Steps
1. Log in to the application using `user@example.com` and the correct password.
2. Navigate to the User Profile section.
3. Locate the Email Address field.
4. Enter a SQL injection payload (e.g., `' OR '1'='1' -- @example.com`) into the Email Address field.
5. Click the "Save" or "Update Profile" button.

# Expected Result
- The system should treat the payload as a literal string or reject it as an invalid email format.
- An error message is displayed indicating an invalid email format.
- No unauthorized data access or database errors occur.
- The email address in the profile remains `user@example.com`.

# Notes
- This test verifies that the system correctly sanitizes input and uses parameterized queries to prevent SQL injection.
