---
tc_id: TC-DYN-BAN-SEC-004
title: Verify Banner Section Layout Selection
priority: High
status:
requirement_link: REQ-DYN-BAN-SEC-001.2, REQ-DYN-BAN-SEC-003.2, REQ-DYN-BAN-SEC-004.1
tags:
  - banner
  - admin-panel
  - mobile-app
  - positive
---

## Description
This test case verifies that a business user can select a predefined layout for a banner section in the Admin Panel and that the Mobile Application renders the banner using the selected layout.

## Pre-Conditions
- User is logged into the Admin Panel with appropriate permissions.
- A banner section exists with multiple banner items.
- Multiple predefined layouts are available in the Admin Panel (e.g., "type-one", "carousel", "grid").

## Test Steps
1. Navigate to the Banner Management section in the Admin Panel.
2. Select an existing banner section to edit.
3. Locate the layout selection dropdown/control.
4. Select a supported layout (e.g., "carousel").
5. Save the changes.
6. Verify the selected layout is applied in the Admin Panel preview (if available).
7. Refresh the Mobile Application and verify the banner section is rendered using the "carousel" layout.
8. Repeat steps 4-7 for another supported layout (e.g., "grid").

## Expected Result
- The banner section's layout is successfully updated in the Admin Panel.
- The Mobile Application renders the banner section according to the selected layout after refresh.
---
