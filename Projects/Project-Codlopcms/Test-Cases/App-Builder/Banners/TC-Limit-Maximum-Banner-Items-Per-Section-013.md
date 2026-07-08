---
test_case_id: TC-DYN-BAN-SEC-013
title: Verify Maximum Number of Banner Items Restriction
priority: Medium
status:
  - completed
requirement_link: REQ-DYN-BAN-SEC-004.3
tags:
  - banner
  - admin-panel
  - negative
  - restriction
run_result: pass
---

## Description
This test case verifies that the Admin Panel restricts the number of banner items to a defined maximum (e.g., 10 items) per section.

## Pre-Conditions
- User is logged into the Admin Panel with appropriate permissions.
- A banner section exists.
- The maximum number of banner items per section is configured (e.g., 10).

## Test Steps
1. Navigate to the Banner Management section in the Admin Panel.
2. Select an existing banner section to edit.
3. Add banner items until the count reaches the maximum allowed (e.g., 10 items).
4. Attempt to add one more banner item.

## Expected Result
- The Admin Panel prevents the addition of a banner item beyond the maximum allowed limit.
- An appropriate error message or disabled "Add Banner Item" control is displayed.
---
