---
test_case_id: TC-DYN-BAN-SEC-033
title: "Verify Admin Panel Radius, Padding, ItemRadius Validation (Non-Negative Integers)"
priority: High
status: Draft
requirement_link: "REQ-DYN-BAN-SEC-004.2"
tags:
  - banner
  - admin-panel
  - validation
  - negative
  - boundary
---

## Description
This test case verifies that the Admin Panel validates `radius`, `padding`, and `itemRadius` inputs to be non-negative integers or numbers.

## Pre-Conditions
- User is logged into the Admin Panel with appropriate permissions.
- A banner section exists.

## Test Steps
1. Navigate to the Banner Management section in the Admin Panel.
2. Select an existing banner section to edit.
3. Locate the `radius` input field.
4. Attempt to enter a negative number (e.g., -5), a non-numeric string (e.g., "abc"), or a value exceeding a reasonable max value.
5. Attempt to save the changes.
6. Repeat steps 3-5 for `padding` and `itemRadius`.

## Expected Result
- The Admin Panel displays a validation error for invalid numeric inputs (negative, non-numeric, too large).
- The Admin Panel prevents saving the changes until valid non-negative numeric values are provided.
