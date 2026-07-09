---
tc_id: TC-DYN-BAN-SEC-032
title: "Verify Admin Panel Background Color Validation (Hex Code)"
priority: High
status: Draft
requirement_link: "REQ-DYN-BAN-SEC-004.2"
tags:
  - banner
  - admin-panel
  - validation
  - negative
---

## Description
This test case verifies that the Admin Panel validates the `background` color input to be a valid hexadecimal color code.

## Pre-Conditions
- User is logged into the Admin Panel with appropriate permissions.
- A banner section exists.

## Test Steps
1. Navigate to the Banner Management section in the Admin Panel.
2. Select an existing banner section to edit.
3. Locate the background color input field.
4. Enter an invalid hex color code (e.g., "#ZZZFFF", "red", "#12345", "#1234567").
5. Attempt to save the changes.

## Expected Result
- The Admin Panel displays a validation error for the invalid background color.
- The Admin Panel prevents saving the changes until a valid hex code is provided.
