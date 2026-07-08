---
test_case_id: TC-DYN-BAN-SEC-026
title: "Verify JSON Required Field - settings.data-object[i].image (URL String)"
priority: High
status: Draft
requirement_link: "REQ-DYN-BAN-SEC-002.1, REQ-DYN-BAN-SEC-002.3"
tags:
  - banner
  - json-validation
  - negative
---

## Description
This test case verifies that a banner JSON with a banner item missing the `image` field or having an invalid URL string for `image` is considered invalid by the Mobile Application and handled gracefully.

## Pre-Conditions
- Mobile Application is set up to fetch banner JSON.

## Test Steps
1. Prepare a banner JSON payload with `"data-object": [ { "image": "" } ]` (empty string for image).
2. Configure the backend to provide this invalid JSON.
3. Launch or refresh the Mobile Application.
4. Repeat with `"data-object": [ { "image": 123 } ]` (non-string image).
5. Repeat with `"data-object": [ { "image": "invalid-url" } ]` (malformed URL string).
6. Repeat with `"data-object": [ { "description": "no image field" } ]` (missing image field).

## Expected Result
- The Mobile Application does not crash.
- The problematic banner item is skipped, or a placeholder image is displayed.
- An error related to the invalid or missing `image` field is logged.
