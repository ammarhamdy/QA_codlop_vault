---
tc_id: TC-DYN-BAN-SEC-011
title: "Verify Removing a Banner Item"
priority: High
status: Draft
requirement_link: "REQ-DYN-BAN-SEC-001.5, REQ-DYN-BAN-SEC-004.1"
tags:
  - banner
  - admin-panel
  - positive
---

## Description
This test case verifies that a business user can successfully remove a banner item from an existing banner section in the Admin Panel.

## Pre-Conditions
- User is logged into the Admin Panel with appropriate permissions.
- A banner section exists with at least two banner items.

## Test Steps
1. Navigate to the Banner Management section in the Admin Panel.
2. Select an existing banner section to edit.
3. Locate one of the banner items and click on its "Remove" or "Delete" control.
4. Confirm the removal if prompted.
5. Save the banner section changes.
6. Verify the banner item is no longer present in the Admin Panel's list of items for that section.
7. Refresh the Mobile Application and verify the banner item is no longer rendered within the section.

## Expected Result
- The banner item is successfully removed from the banner section in the Admin Panel.
- The removed banner item is no longer displayed in the Mobile Application after refresh.
---
