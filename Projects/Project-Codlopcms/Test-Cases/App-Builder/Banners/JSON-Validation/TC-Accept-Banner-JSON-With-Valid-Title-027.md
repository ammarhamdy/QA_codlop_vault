---
tc_id: TC-DYN-BAN-SEC-027
title: Verify JSON Optional Field - title (Valid String)
priority: Medium
status:
  - completed
requirement_link: REQ-DYN-BAN-SEC-002.2, REQ-DYN-BAN-SEC-002.3, REQ-DYN-BAN-SEC-004.2
tags:
  - banner
  - json-validation
  - positive
  - optional
run_result: pass
---

## Description
This test case verifies that a banner JSON with a valid `title` field is correctly processed and displayed (if `showTitle` is true) by the Mobile Application.

## Pre-Conditions
- Mobile Application is set up to fetch banner JSON.

## Test Steps
1. Prepare a banner JSON payload including a valid `title` (e.g., `"title": "My Custom Banner"`) and `"settings": { "showTitle": true }`.
2. Configure the backend to provide this JSON.
3. Launch or refresh the Mobile Application.

## Expected Result
- The Mobile Application displays the banner section with the title "My Custom Banner".
