---
tc_id: TC-DYN-BAN-SEC-012
title: "Verify Reordering Banner Items Within a Section"
priority: Medium
status: Draft
requirement_link: "REQ-DYN-BAN-SEC-001.5, REQ-DYN-BAN-SEC-003.5, REQ-DYN-BAN-SEC-004.1"
tags:
  - banner
  - admin-panel
  - mobile-app
  - positive
---

## Description
This test case verifies that a business user can reorder banner items within a section in the Admin Panel and that this order is reflected in the Mobile Application.

## Pre-Conditions
- User is logged into the Admin Panel with appropriate permissions.
- A banner section exists with at least three distinct banner items (e.g., identifiable by image content).

## Test Steps
1. Navigate to the Banner Management section in the Admin Panel.
2. Select an existing banner section to edit.
3. Observe the initial order of banner items (e.g., Item A, Item B, Item C).
4. Use the reorder functionality (drag-and-drop, up/down arrows) to change the order (e.g., to Item B, Item A, Item C).
5. Save the banner section changes.
6. Verify the new order of banner items in the Admin Panel.
7. Refresh the Mobile Application and visually verify that the banner items are rendered in the new order.

## Expected Result
- Banner items are successfully reordered within the section in the Admin Panel.
- The Mobile Application renders the banner items in the new, reordered sequence after refresh.
---
