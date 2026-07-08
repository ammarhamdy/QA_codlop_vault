---
test_case_id: TC-DYN-BAN-SEC-034
title: "Verify Admin Panel Columns Validation (Positive Integer)"
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
This test case verifies that the Admin Panel validates `columns` input to be a positive integer within an acceptable range (e.g., 1-4).

## Pre-Conditions
- User is logged into the Admin Panel with appropriate permissions.
- A banner section exists, configured for a grid layout.

## Test Steps
1. Navigate to the Banner Management section in the Admin Panel.
2. Select the grid-based banner section to edit.
3. Locate the `columns` input field.
4. Attempt to enter `0`, a negative number (e.g., -2), a non-integer (e.g., 2.5), a non-numeric string (e.g., "two"), or a number outside the typical range (e.g., 5).
5. Attempt to save the changes.

## Expected Result
- The Admin Panel displays a validation error for invalid `columns` inputs.
- The Admin Panel prevents saving the changes until a valid positive integer within the range is provided.
