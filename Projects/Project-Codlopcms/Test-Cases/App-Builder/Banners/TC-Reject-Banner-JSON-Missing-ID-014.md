---
tc_id: TC-DYN-BAN-SEC-014
title: "Verify JSON Required Field - id"
priority: High
status: Draft
requirement_link: "REQ-DYN-BAN-SEC-002.1, REQ-DYN-BAN-SEC-002.3"
tags:
  - banner
  - json-validation
  - negative
---

## Description
This test case verifies that a banner JSON without the required `id` field is considered invalid by the Mobile Application and handled gracefully.

## Pre-Conditions
- Mobile Application is set up to fetch banner JSON.

## Test Steps
1. Prepare a banner JSON payload missing the `id` field.
   ```json
   {
     "section_key": "type_one",
     "type": "banner",
     "layout": "type-one",
     "enabled": true,
     "style": {
       "background": "#ffffff", "radius": 7, "padding": 0, "itemRadius": 20
     },
     "settings": {
       "showTitle": false, "columns": 4, "data-object": []
     }
   }
   ```
2. Configure the backend to provide this invalid JSON.
3. Launch or refresh the Mobile Application.

## Expected Result
- The Mobile Application does not crash.
- The problematic banner section is skipped or a default/fallback state is rendered.
- An error related to the missing `id` is logged.
