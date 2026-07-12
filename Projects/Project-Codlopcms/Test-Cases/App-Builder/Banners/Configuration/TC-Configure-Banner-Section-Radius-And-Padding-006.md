---
tc_id: TC-DYN-BAN-SEC-006
title: Verify Banner Section Radius, Padding, Item Radius Style Configuration
priority: Medium
status:
  - completed
requirement_link: REQ-DYN-BAN-SEC-001.2, REQ-DYN-BAN-SEC-003.3, REQ-DYN-BAN-SEC-004.1
tags:
  - banner
  - admin-panel
  - mobile-app
  - positive
  - boundary
run_result: pass
---

## Description
This test case verifies that a business user can configure the `radius`, `padding`, and `itemRadius` styles of a banner section and that they are correctly applied in the Mobile Application.

## Pre-Conditions
- User is logged into the Admin Panel with appropriate permissions.
- A banner section exists with at least one banner item.

## Test Steps
1. Navigate to the Banner Management section in the Admin Panel.
2. Select an existing banner section to edit.
3. Locate the `radius`, `padding`, and `itemRadius` input fields.
4. Enter valid numeric values for each (e.g., `radius=10`, `padding=5`, `itemRadius=15`).
5. Save the changes.
6. Refresh the Mobile Application and visually verify that the banner section and its items reflect the configured radii and padding.
7. Repeat steps 4-6 with boundary values (e.g., `0`, max allowed value).

## Expected Result
- The banner section's `radius`, `padding`, and `itemRadius` are successfully updated in the Admin Panel.
- The Mobile Application displays the banner section and its items with the specified `radius`, `padding`, and `itemRadius` after refresh.
---
