---
tc_id: TC-DYN-BAN-SEC-042
title: Verify Mobile App showTitle Setting Affects Rendering
priority: High
status:
  - completed
requirement_link: REQ-DYN-BAN-SEC-003.4
tags:
  - banner
  - mobile-app
  - positive
run_result: pass
---

## Description
This test case verifies that the Mobile Application correctly displays or hides the banner section title based on the `settings.showTitle` boolean value.

## Pre-Conditions
- Mobile Application is installed and running.
- Backend is configured to provide valid banner JSON with a defined `title` (e.g., "My Banner Title") and at least one banner item.

## Test Steps
1. Configure the backend to serve a banner JSON with `"settings": { "showTitle": true, ... }`.
2. Launch or refresh the Mobile Application.
3. Visually verify that the banner section title ("My Banner Title") is displayed.
4. Configure the backend to serve a banner JSON with `"settings": { "showTitle": false, ... }`.
5. Launch or refresh the Mobile Application.
6. Visually verify that the banner section title is hidden.

## Expected Result
- The Mobile Application correctly displays the banner title when `showTitle` is `true`.
- The Mobile Application correctly hides the banner title when `showTitle` is `false`.
