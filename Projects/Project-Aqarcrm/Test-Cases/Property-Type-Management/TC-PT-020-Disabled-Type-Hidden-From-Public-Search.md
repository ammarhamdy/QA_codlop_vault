---
tc_id: TC-PT-020
title: Verify Disabled Property Type is Hidden from Public Website Search Filters
priority: High
status: Ready
type: Regression
linked_requirement: BR-PT-004, BR-PT-005
tags:
  - test-case
  - business-rule
  - integration
  - regression
run_result: Pass
---

# Test Data
| Field | Value |
|-------|-------|
| Property Type | Apartment (Enabled) |
| Property Type | Warehouse (Disabled) |

# Preconditions
- A Property Type "Apartment" exists with status Enabled.
- A Property Type "Warehouse" exists with status Disabled.
- Navigate to the public website (non-admin front-end).

# Steps
1. Navigate to the public website's property search / listing page.
2. Locate the Property Type filter option.
3. Open the filter dropdown and observe the available options.
4. Verify that "Apartment" (Enabled) appears in the filter list.
5. Verify that "Warehouse" (Disabled) does NOT appear in the filter list.

# Expected Result
- Only Enabled Property Types are shown in the public website's property search filters.
- Disabled Property Types (e.g., Warehouse) are hidden from public users.

# Notes
- BR-PT-004: "Only Enabled Property Types shall appear in the public website's property search filters."
- BR-PT-005: "Disabled Property Types shall be hidden from Public website search filters."

# Attachments
