---
tc_id: TC-DYN-BAN-SEC-024
title: "Verify JSON Required Field - settings.columns (Positive Integer)"
priority: High
status: Draft
requirement_link: "REQ-DYN-BAN-SEC-002.1, REQ-DYN-BAN-SEC-002.3"
tags:
  - banner
  - json-validation
  - negative
  - boundary
---

## Description
This test case verifies that a banner JSON with a non-positive integer or non-numeric value for `settings.columns` is considered invalid by the Mobile Application and handled gracefully.

## Pre-Conditions
- Mobile Application is set up to fetch banner JSON.

## Test Steps
1. Prepare a banner JSON payload with `"settings": { "columns": "invalid_number", ... }`.
2. Configure the backend to provide this invalid JSON.
3. Launch or refresh the Mobile Application.
4. Repeat with `"settings": { "columns": 0, ... }`.
5. Repeat with `"settings": { "columns": -1, ... }`.

## Expected Result
- The Mobile Application does not crash.
- The problematic banner section's columns setting defaults to `1` or a fallback behavior.
- An error related to the invalid `settings.columns` value/type is logged.
