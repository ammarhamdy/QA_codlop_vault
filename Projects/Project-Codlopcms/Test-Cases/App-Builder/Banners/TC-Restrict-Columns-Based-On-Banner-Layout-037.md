---
test_case_id: TC-DYN-BAN-SEC-037
title: "Verify Admin Panel Column Restrictions Based on Layout"
priority: Medium
status: Draft
requirement_link: "REQ-DYN-BAN-SEC-004.3"
tags:
  - banner
  - admin-panel
  - restriction
  - negative
---

## Description
This test case verifies that the Admin Panel imposes restrictions on the `columns` setting based on the selected `layout` type (e.g., `columns` setting is hidden or disabled for non-grid layouts).

## Pre-Conditions
- User is logged into the Admin Panel with appropriate permissions.
- A banner section exists.
- At least one non-grid layout (e.g., "carousel") and one grid layout (e.g., "grid") are available.

## Test Steps
1. Navigate to the Banner Management section in the Admin Panel.
2. Select an existing banner section to edit.
3. Set the `layout` to a non-grid type (e.g., "carousel").
4. Observe the `columns` setting input field.
5. Change the `layout` to a grid type (e.g., "grid").
6. Observe the `columns` setting input field.

## Expected Result
- When a non-grid layout is selected, the `columns` input field is either hidden, disabled, or grayed out.
- When a grid layout is selected, the `columns` input field becomes enabled and editable.
