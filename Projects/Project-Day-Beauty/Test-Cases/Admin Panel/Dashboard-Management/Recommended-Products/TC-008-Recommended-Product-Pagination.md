---
tc_id: TC-Admin-008
title: Verify Pagination While Selecting a Recommended Product
priority:
  - High
status:
  - Draft
type:
  - Functional
linked_requirement: US-013-Beauty-Dashboard-Management
tags:
  - test-case
run_result: Fail
---

# Test Data
| Field | Value |
| ----- | ----- |
|       |       |
|       |       |

# Preconditions
-Admin is on the **Add Recommended Product** screen, and the products list contains at least 2 pages.
# Steps
1. Open the Add Recommended Product screen.
2. Open the product selection list.
3. Navigate to the next page using the pagination controls.
4. Navigate back to the previous page.
5. Select a product from another page and save.
# Expected Result
-Pagination works correctly, the user can navigate between pages without errors, and the selected product is added successfully regardless of the page it was selected from.
# Notes

# Attachments
