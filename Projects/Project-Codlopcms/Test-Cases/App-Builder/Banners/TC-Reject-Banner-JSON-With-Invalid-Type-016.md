---
test_case_id: TC-DYN-BAN-SEC-016
title: "Verify JSON Required Field - type (Strictly 'banner')"
priority: High
status: Draft
requirement_link: "REQ-DYN-BAN-SEC-002.1, REQ-DYN-BAN-SEC-002.3"
tags:
  - banner
  - json-validation
  - negative
---

## Description
This test case verifies that a banner JSON with an incorrect value for the `type` field (not "banner") is considered invalid by the Mobile Application and handled gracefully.

## Pre-Conditions
- Mobile Application is set up to fetch banner JSON.

## Test Steps
1. Prepare a banner JSON payload with `"type": "other_section"`.
2. Configure the backend to provide this invalid JSON.
3. Launch or refresh the Mobile Application.

## Expected Result
- The Mobile Application does not crash.
- The problematic banner section is skipped or a default/fallback state is rendered.
- An error related to the incorrect `type` value is logged.
