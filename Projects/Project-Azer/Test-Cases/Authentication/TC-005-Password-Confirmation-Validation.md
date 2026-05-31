---
tc_id: TC-005
title: Verify Password Confirmation Validation on Registration
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
| Field           | Value          |
| --------------- | -------------- |
| Email Address   | new.user@example.com |
| Phone Number    | +1122334455    |
| Password        | Pass123!       |
| Confirm Password | DifferentPass! |

# Preconditions
- User is on the website's registration page.

# Steps
1. Navigate to the registration page.
2. Enter valid data for Email Address and Phone Number.
3. Enter a Password (e.g., `Pass123!`).
4. Enter a different password in the Confirm Password field (e.g., `DifferentPass!`).
5. Click the "Sign Up" or "Register" button.

# Expected Result
- The system should display a validation error message indicating that the passwords do not match.
- The form submission should be prevented.
- The user should remain on the registration page.

# Notes

# Attachments
