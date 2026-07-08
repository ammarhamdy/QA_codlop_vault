---
test_case_id: TC-DYN-BAN-SEC-031
title: "Verify Admin Panel Layout Validation (Predefined List)"
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
This test case verifies that the Admin Panel restricts the `layout` selection to only predefined, valid options.

## Pre-Conditions
- User is logged into the Admin Panel with appropriate permissions.
- A banner section exists.
- Predefined valid layouts are configured in the Admin Panel.

## Test Steps
1. Navigate to the Banner Management section in the Admin Panel.
2. Select an existing banner section to edit.
3. Locate the layout selection control (dropdown).
4. Attempt to input or select a layout type that is not in the predefined list (e.g., via browser developer tools or invalid API call if direct UI input is not possible).
5. (If UI allows for free input) Enter an invalid layout name. Attempt to save.

## Expected Result
- The Admin Panel only allows selection from the predefined list of layouts.
- If an invalid layout is attempted (e.g., via direct input or API manipulation), the Admin Panel displays a validation error and prevents saving or reverts to a valid default.
