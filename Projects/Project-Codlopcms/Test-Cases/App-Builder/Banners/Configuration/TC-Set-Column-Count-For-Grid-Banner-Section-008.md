---
tc_id: TC-DYN-BAN-SEC-008
title: Verify Banner Section Columns Setting Configuration
priority: High
status:
requirement_link: REQ-DYN-BAN-SEC-001.2, REQ-DYN-BAN-SEC-003.4, REQ-DYN-BAN-SEC-004.1
tags:
  - banner
  - admin-panel
  - mobile-app
  - positive
  - boundary
---

## Description
This test case verifies that a business user can configure the `columns` setting for a grid-based banner section and that it correctly affects the rendering of banner items in the Mobile Application.

## Pre-Conditions
- User is logged into the Admin Panel with appropriate permissions.
- A banner section exists, configured with a grid-based `layout` and at least 4 banner items.

## Test Steps
1. Navigate to the Banner Management section in the Admin Panel.
2. Select the grid-based banner section to edit.
3. Locate the `columns` input/selector.
4. Set `columns` to `2`.
5. Save the changes.
6. Refresh the Mobile Application and verify that banner items are arranged in 2 columns.
7. Set `columns` to `4` (or maximum supported).
8. Save the changes.
9. Refresh the Mobile Application and verify that banner items are arranged in 4 columns.

## Expected Result
- The `columns` setting is successfully updated in the Admin Panel.
- The Mobile Application renders the banner items in the specified number of columns for grid-based layouts after refresh.
---
