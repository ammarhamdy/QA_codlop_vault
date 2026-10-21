---
tc_id: TC-DYN-BAN-SEC-046
title: "Verify Mobile App Disabled-Section Behavior (enabled: false)"
priority: High
status:
  - completed
requirement_link: REQ-DYN-BAN-SEC-003.7
tags:
  - banner
  - mobile-app
  - negative
  - disabled
run_result: pass
---

## Description
This test case verifies that the Mobile Application does not render a banner section when its `enabled` field is `false` in the JSON.

## Pre-Conditions
- Mobile Application is installed and running.
- Backend is configured to provide valid banner JSON with a banner section containing items.

## Test Steps
1. Configure the backend to serve a banner JSON with `"enabled": false` for a specific banner section.
2. Launch or refresh the Mobile Application.
3. Visually verify that the disabled banner section is not rendered on the UI.

## Expected Result
- The Mobile Application completely hides the banner section when `enabled` is `false`.
- The application does not crash or show any errors.
