---
tc_id: TC-DYN-BAN-SEC-018
title: "Verify JSON Required Field - enabled (Boolean)"
priority: High
status: Draft
requirement_link: "REQ-DYN-BAN-SEC-002.1, REQ-DYN-BAN-SEC-002.3"
tags:
  - banner
  - json-validation
  - negative
---

## Description
This test case verifies that a banner JSON with a non-boolean value for the `enabled` field is considered invalid by the Mobile Application and handled gracefully.

## Pre-Conditions
- Mobile Application is set up to fetch banner JSON.

## Test Steps
1. Prepare a banner JSON payload with `"enabled": "invalid_boolean_string"`.
2. Configure the backend to provide this invalid JSON.
3. Launch or refresh the Mobile Application.

## Expected Result
- The Mobile Application does not crash.
- The problematic banner section is skipped or a default/fallback state is rendered.
- An error related to the invalid `enabled` type is logged.
