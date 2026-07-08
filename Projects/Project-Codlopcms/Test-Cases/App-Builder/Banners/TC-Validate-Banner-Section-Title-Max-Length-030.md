---
test_case_id: TC-DYN-BAN-SEC-030
title: "Verify Admin Panel Title Max Length Validation"
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
This test case verifies that the Admin Panel enforces a maximum length for the banner section `title`.

## Pre-Conditions
- User is logged into the Admin Panel with appropriate permissions.
- A banner section exists.
- Maximum title length is defined (e.g., 100 characters).

## Test Steps
1. Navigate to the Banner Management section in the Admin Panel.
2. Select an existing banner section to edit.
3. Locate the title input field.
4. Enter a title with exactly the maximum allowed length (e.g., 100 characters). Save changes. (Positive check)
5. Attempt to enter a title exceeding the maximum allowed length (e.g., 101 characters).

## Expected Result
- Step 4: The title is successfully saved with the maximum allowed length.
- Step 5: The Admin Panel prevents entering characters beyond the maximum length or displays a validation error message upon attempting to save.
