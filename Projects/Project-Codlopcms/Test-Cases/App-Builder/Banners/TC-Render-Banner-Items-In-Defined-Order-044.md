---
test_case_id: TC-DYN-BAN-SEC-044
title: "Verify Mobile App Renders Banner Items in Correct Order"
priority: High
status: Draft
requirement_link: "REQ-DYN-BAN-SEC-003.5"
tags:
  - banner
  - mobile-app
  - positive
---

## Description
This test case verifies that the Mobile Application renders banner items in the exact order they appear in the `settings.data-object` array.

## Pre-Conditions
- Mobile Application is installed and running.
- Backend is configured to provide valid banner JSON with `settings.data-object` containing at least three distinct banner items (e.g., image1, image2, image3).

## Test Steps
1. Configure the backend to serve a banner JSON where `data-object` specifies order: [Item A, Item B, Item C].
2. Launch or refresh the Mobile Application.
3. Visually verify that the banner items are rendered in the order A, B, C.
4. Configure the backend to serve a banner JSON where `data-object` specifies order: [Item C, Item A, Item B].
5. Launch or refresh the Mobile Application.
6. Visually verify that the banner items are rendered in the order C, A, B.

## Expected Result
- The Mobile Application renders banner items precisely in the order defined by the `settings.data-object` array.
---
