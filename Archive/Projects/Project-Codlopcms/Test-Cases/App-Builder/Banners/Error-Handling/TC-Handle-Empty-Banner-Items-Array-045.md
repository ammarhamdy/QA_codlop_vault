---
tc_id: TC-DYN-BAN-SEC-045
title: Verify Mobile App Empty-State Behavior (Empty data-object)
priority: High
status:
  - completed
requirement_link: REQ-DYN-BAN-SEC-003.6
tags:
  - banner
  - mobile-app
  - negative
  - empty-state
run_result: pass
---

## Description
This test case verifies the Mobile Application's behavior when a banner section's `settings.data-object` is an empty array.

## Pre-Conditions
- Mobile Application is installed and running.
- Backend is configured to provide valid banner JSON.

## Test Steps
1. Configure the backend to serve a banner JSON with `"settings": { "data-object": [], ... }`.
2. Launch or refresh the Mobile Application.

## Expected Result
- The Mobile Application either completely hides the banner section, or it displays a predefined placeholder/empty state message (e.g., "No banners available") for that section.
- The application does not crash or show any errors.
---
