---
test_case_id: TC-DYN-BAN-SEC-007
title: "Verify Banner Section showTitle Setting Configuration"
priority: High
status: Draft
requirement_link: "REQ-DYN-BAN-SEC-001.2, REQ-DYN-BAN-SEC-003.4, REQ-DYN-BAN-SEC-004.1"
tags:
  - banner
  - admin-panel
  - mobile-app
  - positive
---

## Description
This test case verifies that a business user can configure the `showTitle` setting for a banner section and that the title's visibility is correctly controlled in the Mobile Application.

## Pre-Conditions
- User is logged into the Admin Panel with appropriate permissions.
- A banner section exists with a defined `title`.

## Test Steps
1. Navigate to the Banner Management section in the Admin Panel.
2. Select an existing banner section to edit.
3. Locate the `showTitle` toggle/checkbox.
4. Set `showTitle` to `true`.
5. Save the changes.
6. Refresh the Mobile Application and verify that the banner section's title is displayed.
7. Set `showTitle` to `false`.
8. Save the changes.
9. Refresh the Mobile Application and verify that the banner section's title is hidden.

## Expected Result
- The `showTitle` setting is successfully updated in the Admin Panel.
- The Mobile Application correctly displays or hides the banner section's title based on the `showTitle` setting after refresh.
---
