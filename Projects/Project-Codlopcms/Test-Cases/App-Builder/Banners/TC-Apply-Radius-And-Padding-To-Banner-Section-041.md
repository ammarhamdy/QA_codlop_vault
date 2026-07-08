---
test_case_id: TC-DYN-BAN-SEC-041
title: Verify Mobile App Applies Style.Radius, Padding, ItemRadius
priority: High
status:
  - completed
requirement_link: REQ-DYN-BAN-SEC-003.3
tags:
  - banner
  - mobile-app
  - positive
run_result: fail
---

## Description
This test case verifies that the Mobile Application correctly applies `style.radius`, `style.padding`, and `style.itemRadius` to the banner section and its items as specified in the JSON.

## Pre-Conditions
- Mobile Application is installed and running.
- Backend is configured to provide valid banner JSON with at least one banner item.

## Test Steps
1. Configure the backend to serve a banner JSON with specific values for `radius`, `padding`, `itemRadius` (e.g., `radius: 10`, `padding: 5`, `itemRadius: 15`).
2. Launch or refresh the Mobile Application.
3. Visually inspect the banner section and its items for the correct application of border-radius and internal spacing.
4. Configure the backend to serve a banner JSON with `0` for all these values.
5. Launch or refresh the Mobile Application.
6. Visually inspect the banner section and its items for no visible radius or padding.

## Expected Result
- The Mobile Application correctly applies `style.radius` to the banner section container.
- The Mobile Application correctly applies `style.padding` as internal spacing within the banner section.
- The Mobile Application correctly applies `style.itemRadius` to individual banner images/items.
