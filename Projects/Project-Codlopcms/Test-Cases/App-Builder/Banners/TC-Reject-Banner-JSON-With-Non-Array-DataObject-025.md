---
tc_id: TC-DYN-BAN-SEC-025
title: "Verify JSON Required Field - settings.data-object (Array)"
priority: High
status: Draft
requirement_link: "REQ-DYN-BAN-SEC-002.1, REQ-DYN-BAN-SEC-002.3"
tags:
  - banner
  - json-validation
  - negative
---

## Description
This test case verifies that a banner JSON with `settings.data-object` as a non-array type is considered invalid by the Mobile Application and handled gracefully.

## Pre-Conditions
- Mobile Application is set up to fetch banner JSON.

## Test Steps
1. Prepare a banner JSON payload with `"settings": { "data-object": "not_an_array", ... }`.
2. Configure the backend to provide this invalid JSON.
3. Launch or refresh the Mobile Application.

## Expected Result
- The Mobile Application does not crash.
- The problematic banner section's items are not rendered, or an empty state is displayed.
- An error related to the invalid `settings.data-object` type is logged.
