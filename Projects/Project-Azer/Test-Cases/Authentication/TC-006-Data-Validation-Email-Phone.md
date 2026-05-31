---
tc_id: TC-006
title: Verify Email and Phone Number Data Validation on Sign Up/Login
priority: High
status: Draft
type: Functional
linked_requirement: US-001
tags:
  - test-case
  - authentication
  - validation
---

# Test Data
| Field         | Invalid Value       |
| ------------- | ------------------- |
| Email Address | invalid-email       |
| Phone Number  | 123                 |

# Preconditions
- User is on the website's registration or login page.

# Steps
1. Navigate to the registration/login page.
2. Attempt to sign up/login with an invalid email format (e.g., `invalid-email`).
3. Verify that an email validation error message is displayed.
4. Attempt to sign up/login with an invalid phone number format (e.g., `123`).
5. Verify that a phone number validation error message is displayed.

# Expected Result
- For invalid email, an error message like "Invalid email format" should be displayed.
- For invalid phone number, an error message like "Invalid phone number format" should be displayed.
- Form submission should be prevented until valid data is entered.

# Notes
- Test boundary conditions and edge cases for email and phone number formats (e.g., too long, special characters).

# Attachments
