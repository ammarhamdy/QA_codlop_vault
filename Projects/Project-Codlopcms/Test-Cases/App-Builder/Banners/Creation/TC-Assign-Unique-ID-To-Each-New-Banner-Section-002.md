---
tc_id: TC-DYN-BAN-SEC-002
title: Verify Unique ID Assignment for New Banner Section
priority: High
status:
  - completed
requirement_link: REQ-DYN-BAN-SEC-001.1
tags:
  - banner
  - admin-panel
  - positive
run_result: pass
---

## Description
This test case verifies that each new banner section created in the Admin Panel is assigned a unique identifier (`id`).

## Pre-Conditions
- User is logged into the Admin Panel with appropriate permissions.

## Test Steps
1. Navigate to the Banner Management section in the Admin Panel.
2. Click on the "Create New Banner Section" button. Note the `id` of the created section.
3. Repeat step 2 to create a second new banner section. Note its `id`.
4. Compare the `id`s of the two created banner sections.

## Expected Result
- The `id` of the first banner section is different from the `id` of the second banner section.
- Both banner sections are created successfully.
---
