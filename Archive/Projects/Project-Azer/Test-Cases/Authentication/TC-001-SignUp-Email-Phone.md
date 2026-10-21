---
tc_id: TC-001
title: Verify Client Registration with Email and Phone
priority: High
status: Draft
type: Functional
linked_requirement: US-001
tags:
  - test-case
  - authentication
  - signup
run_result: pass
---

# Test Data
| Field          | Value          |
| -------------- | -------------- |
| Email Address  | test.user@example.com |
| Phone Number   | +1234567890    |
| Password       | SecureP@ss1    |
| Confirm Password | SecureP@ss1    |

# Preconditions
- User is on the website's registration page.

# Steps
1. Navigate to the registration page.
2. Enter a valid Email Address (e.g., `test.user@example.com`).
3. Enter a valid Phone Number (e.g., `+1234567890`).
4. Enter a strong Password (e.g., `SecureP@ss1`).
5. Re-enter the same password in the Confirm Password field.
6. Click the "Sign Up" or "Register" button.

# Expected Result
- The system should successfully create the user's account.
- The user should be redirected to a post-registration page (e.g., email verification, login, or dashboard).
- A success message should be displayed (if applicable).

# Notes

# Attachments
