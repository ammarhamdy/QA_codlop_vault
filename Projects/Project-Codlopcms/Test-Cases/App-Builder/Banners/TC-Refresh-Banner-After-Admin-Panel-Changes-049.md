---
test_case_id: TC-DYN-BAN-SEC-049
title: Verify Mobile App Refresh Reflects Admin Panel Changes
priority: High
status:
  - completed
requirement_link: REQ-DYN-BAN-SEC-003.1
tags:
  - banner
  - mobile-app
  - admin-panel
  - positive
run_result: pass
---

## Description
This test case verifies that changes made in the Admin Panel are reflected in the Mobile Application after a refresh.

## Pre-Conditions
- User is logged into the Admin Panel with appropriate permissions.
- Mobile Application is installed and running.
- A banner section exists and is configured with specific settings.

## Test Steps
1. In the Admin Panel, navigate to an existing banner section and change its `title` (e.g., from "Old Title" to "New Title") and `background` color (e.g., from red to blue).
2. Save the changes in the Admin Panel.
3. In the Mobile Application, perform a refresh action (e.g., pull-to-refresh, restart app, navigate away and back).
4. Visually verify the banner section displays the "New Title" and has a blue background.

## Expected Result
- The Mobile Application successfully fetches the updated JSON from the backend after refresh.
- All changes made in the Admin Panel (title, background color, layout, item changes, etc.) are accurately reflected in the Mobile Application's rendering.
---
