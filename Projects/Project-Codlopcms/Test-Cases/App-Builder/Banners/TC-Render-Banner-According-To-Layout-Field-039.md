---
test_case_id: TC-DYN-BAN-SEC-039
title: "Verify Mobile App Renders Banner Based on Layout Field"
priority: High
status: Draft
requirement_link: "REQ-DYN-BAN-SEC-003.2"
tags:
  - banner
  - mobile-app
  - positive
---

## Description
This test case verifies that the Mobile Application correctly identifies the banner layout from the `layout` field in the JSON and renders banner items accordingly.

## Pre-Conditions
- Mobile Application is installed and running.
- Backend is configured to provide valid banner JSONs with different `layout` values (e.g., "type-one", "carousel", "grid").

## Test Steps
1. Configure the backend to serve a banner JSON with `"layout": "type-one"`.
2. Launch or refresh the Mobile Application and observe the banner rendering.
3. Configure the backend to serve a banner JSON with `"layout": "carousel"`.
4. Launch or refresh the Mobile Application and observe the banner rendering.
5. Configure the backend to serve a banner JSON with `"layout": "grid"`.
6. Launch or refresh the Mobile Application and observe the banner rendering.

## Expected Result
- The Mobile Application renders the banner items visually distinct for each specified layout type.
- For "type-one" (as per example), it should render as a specific single banner or simple arrangement.
- For "carousel", it should render as a horizontally scrollable carousel.
- For "grid", it should render items in a grid format.
