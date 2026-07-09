---
tc_id: TC-DYN-BAN-SEC-021
title: "Verify JSON Required Field - style.radius, padding, itemRadius (Numeric)"
priority: High
status: Draft
requirement_link: "REQ-DYN-BAN-SEC-002.1, REQ-DYN-BAN-SEC-002.3"
tags:
  - banner
  - json-validation
  - negative
---

## Description
This test case verifies that a banner JSON with non-numeric values for `style.radius`, `style.padding`, or `style.itemRadius` is considered invalid by the Mobile Application and handled gracefully.

## Pre-Conditions
- Mobile Application is set up to fetch banner JSON.

## Test Steps
1. Prepare a banner JSON payload with `"style": { "radius": "invalid_number", ... }`.
2. Configure the backend to provide this invalid JSON.
3. Launch or refresh the Mobile Application.

## Expected Result
- The Mobile Application does not crash.
- The problematic banner section's styling defaults to fallback values for `radius`, `padding`, `itemRadius`.
- An error related to the invalid numeric type is logged.
