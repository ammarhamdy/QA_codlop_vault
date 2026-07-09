---
tc_id: TC-DYN-BAN-SEC-043
title: Verify Mobile App Columns Setting Affects Rendering (Grid Layout)
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
This test case verifies that the Mobile Application correctly uses the `settings.columns` value to dictate the number of columns when rendering banner items in a grid-like layout.

## Pre-Conditions
- Mobile Application is installed and running.
- Backend is configured to provide valid banner JSON with a grid-based `layout` and at least 4 banner items.

## Test Steps
1. Configure the backend to serve a banner JSON with `"layout": "grid"` and `"settings": { "columns": 2, ... }`.
2. Launch or refresh the Mobile Application.
3. Visually verify that banner items are arranged in 2 columns.
4. Configure the backend to serve a banner JSON with `"layout": "grid"` and `"settings": { "columns": 4, ... }`.
5. Launch or refresh the Mobile Application.
6. Visually verify that banner items are arranged in 4 columns.

## Expected Result
- The Mobile Application correctly renders banner items in the specified number of columns for grid-based layouts.
