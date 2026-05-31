---
tc_id: TC-013
title: Verify Registration/Login with Empty Required Fields
priority: Medium
status: Draft
type: Functional
linked_requirement: US-001
tags:
  - test-case
  - authentication
  - validation
  - edge-case
---

# Test Data
| Field          | Value          |
| -------------- | -------------- |
| Email Address  | (empty)        |
| Phone Number   | (empty)        |
| Password       | (empty)        |
| Confirm Password | (empty)        |

# Preconditions
- User is on the website's registration or login page.

# Steps
1. Navigate to the registration page.
2. Attempt to submit the registration form with all required fields left empty.
3. Verify that validation errors are displayed for each empty required field.
4. Attempt to submit the registration form with one required field empty at a time (e.g., Email empty, Phone empty, etc.), verifying specific error messages for each.
5. Navigate to the login page.
6. Attempt to submit the login form with both username/email and password fields left empty.
7. Verify that validation errors are displayed for each empty required field.

# Expected Result
- For each empty required field, an error message (e.g., "This field is required") should be displayed.
- Form submission should be prevented.
- The user should remain on the current page.

# Notes
- Test all combinations of empty fields for a robust validation check.

# Attachments
