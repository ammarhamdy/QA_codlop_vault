---
tc_id: TC-DYN-BAN-SEC-003
title: Verify Banner Section Title Update
priority: High
status:
requirement_link: REQ-DYN-BAN-SEC-001.2, REQ-DYN-BAN-SEC-004.1
tags:
  - banner
  - admin-panel
  - positive
---

## Description
This test case verifies that a business user can update the title of an existing banner section in the Admin Panel.

## Pre-Conditions
- User is logged into the Admin Panel with appropriate permissions.
- A banner section exists with a default title.

## Test Steps
1. Navigate to the Banner Management section in the Admin Panel.
2. Select an existing banner section to edit.
3. Locate the title input field and enter a new valid title (e.g., "Updated Main Banner").
4. Save the changes.
5. Verify the updated title in the Admin Panel.
6. Refresh the Mobile Application and verify the updated title is displayed (if `showTitle` is enabled).

## Expected Result
- The banner section's title is successfully updated in the Admin Panel.
- The updated title is reflected in the Mobile Application after refresh.
---
