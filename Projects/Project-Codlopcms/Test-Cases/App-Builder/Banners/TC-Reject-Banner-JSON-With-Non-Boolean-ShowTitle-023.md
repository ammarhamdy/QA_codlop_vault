---
tc_id: TC-DYN-BAN-SEC-023
title: "Verify JSON Required Field - settings.showTitle (Boolean)"
priority: High
status: Draft
requirement_link: "REQ-DYN-BAN-SEC-002.1, REQ-DYN-BAN-SEC-002.3"
tags:
  - banner
  - json-validation
  - negative
---

## Description
This test case verifies that a banner JSON with a non-boolean value for `settings.showTitle` is considered invalid by the Mobile Application and handled gracefully.

## Pre-Conditions
- Mobile Application is set up to fetch banner JSON.

## Test Steps
1. Prepare a banner JSON payload with `"settings": { "showTitle": "not_a_boolean", ... }`.
2. Configure the backend to provide this invalid JSON.
3. Launch or refresh the Mobile Application.

## Expected Result
- The Mobile Application does not crash.
- The problematic banner section's title visibility defaults to `false` or a fallback behavior.
- An error related to the invalid `settings.showTitle` type is logged.
