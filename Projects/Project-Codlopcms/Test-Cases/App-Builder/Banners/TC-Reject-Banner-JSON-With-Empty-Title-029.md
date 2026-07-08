---
test_case_id: TC-DYN-BAN-SEC-029
title: "Verify JSON Optional Field - title (Empty String)"
priority: Medium
status: Draft
requirement_link: "REQ-DYN-BAN-SEC-002.2, REQ-DYN-BAN-SEC-002.3"
tags:
  - banner
  - json-validation
  - negative
  - optional
---

## Description
This test case verifies that if the optional `title` field is present but an empty string, it is handled gracefully by the Mobile Application and no title is displayed.

## Pre-Conditions
- Mobile Application is set up to fetch banner JSON.

## Test Steps
1. Prepare a banner JSON payload with `"title": ""` and `"settings": { "showTitle": true }`.
2. Configure the backend to provide this JSON.
3. Launch or refresh the Mobile Application.

## Expected Result
- The Mobile Application does not crash.
- The banner section is rendered without a visible title.
- (Optional) An error/warning related to the empty title string is logged.
