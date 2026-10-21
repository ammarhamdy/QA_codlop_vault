---
tc_id: TC-DYN-BAN-SEC-028
title: Verify JSON Optional Field - title (Missing)
priority: Medium
status:
  - completed
requirement_link: REQ-DYN-BAN-SEC-002.2
tags:
  - banner
  - json-validation
  - positive
  - optional
run_result: pass
---

## Description
This test case verifies that a banner JSON missing the optional `title` field is correctly processed by the Mobile Application without errors, and no title is displayed.

## Pre-Conditions
- Mobile Application is set up to fetch banner JSON.

## Test Steps
1. Prepare a banner JSON payload that omits the `title` field.
2. Configure the backend to provide this JSON.
3. Launch or refresh the Mobile Application.

## Expected Result
- The Mobile Application does not crash.
- The banner section is rendered without a title, regardless of the `showTitle` setting.
