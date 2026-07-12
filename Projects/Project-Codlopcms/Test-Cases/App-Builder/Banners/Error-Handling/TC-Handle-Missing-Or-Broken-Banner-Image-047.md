---
tc_id: TC-DYN-BAN-SEC-047
title: Verify Mobile App Missing-Image Behavior
priority: High
status:
  - completed
requirement_link: REQ-DYN-BAN-SEC-003.8
tags:
  - banner
  - mobile-app
  - negative
  - error-handling
run_result: fail
---

## Description
This test case verifies the Mobile Application's behavior when a banner item's `image` URL is invalid or unreachable.

## Pre-Conditions
- Mobile Application is installed and running.
- Backend is configured to provide valid banner JSON with a banner section containing at least one banner item.

## Test Steps
1. Configure the backend to serve a banner JSON with `"image": "http://nonexistent.com/missing.webp"` for a banner item.
2. Launch or refresh the Mobile Application.
3. Visually verify the rendering of the banner item.

## Expected Result
- The Mobile Application does not crash.
- The problematic banner item either displays a default placeholder image or is skipped entirely from rendering.
- An image loading error is logged by the application.
