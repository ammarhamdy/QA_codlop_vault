---
tc_id: TC-DYN-BAN-SEC-001
title: Verify Banner Section Creation and Default Configuration
priority: High
status:
requirement_link: REQ-DYN-BAN-SEC-001.1
tags:
  - banner
  - admin-panel
  - positive
---

## Description
This test case verifies that a business user can successfully create a new banner section in the Admin Panel and that the newly created section is assigned a unique ID and initialized with the correct default configuration.

## Pre-Conditions
- User is logged into the Admin Panel with appropriate permissions.

## Test Steps
1. Navigate to the Banner Management section in the Admin Panel.
2. Click on the "Create New Banner Section" button.
3. Observe the newly created banner section's properties.

## Expected Result
- A new banner section is created successfully.
- The new banner section has a unique `id` (e.g., "`banner_mracdtf9n2ur`").
- The `enabled` status is `true` by default.
- The `style.background` is "`#ffffff`" by default.
- The `style.radius`, `style.padding`, `style.itemRadius` are `0` by default.
- The `settings.showTitle` is `false` by default.
- The `settings.columns` is `1` by default.
- The `settings.data-object` is an empty array `[]` by default.
