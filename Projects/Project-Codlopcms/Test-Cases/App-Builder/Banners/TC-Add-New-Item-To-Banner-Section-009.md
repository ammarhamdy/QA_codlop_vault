---
test_case_id: TC-DYN-BAN-SEC-009
title: Verify Adding a New Banner Item
priority: High
status:
  - completed
requirement_link: REQ-DYN-BAN-SEC-001.5, REQ-DYN-BAN-SEC-004.1
tags:
  - banner
  - admin-panel
  - positive
run_result: pass
---

## Description
This test case verifies that a business user can successfully add a new banner item to an existing banner section in the Admin Panel.

## Pre-Conditions
- User is logged into the Admin Panel with appropriate permissions.
- A banner section exists.
- A valid image URL/file is available for adding.

## Test Steps
1. Navigate to the Banner Management section in the Admin Panel.
2. Select an existing banner section to edit.
3. Locate the "Add Banner Item" button/control.
4. Click to add a new item.
5. Input a valid image URL or upload an image file.
6. Save the banner section changes.
7. Verify the new banner item appears in the Admin Panel's list of items for that section.
8. Refresh the Mobile Application and verify the new banner item is rendered within the section.

## Expected Result
- A new banner item is successfully added to the banner section in the Admin Panel.
- The new banner item is displayed in the Mobile Application after refresh.
