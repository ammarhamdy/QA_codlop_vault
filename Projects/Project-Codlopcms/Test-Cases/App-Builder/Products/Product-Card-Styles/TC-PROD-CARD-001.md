---
tc_id: TC-PROD-CARD-001
title: Verify Admin Can Select Product Card Style from Supported Values
priority: High
status: Ready
type: Functional
linked_requirement: PROD-REQ-010
tags:
  - test-case
  - card-style
  - selection
  - positive
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Product Card Style | type_one |

# Preconditions
- Admin is logged into the Admin Panel.
- A Product Section is open for editing.

# Steps
1. Locate the Product Card Style selector.
2. Select "type_one" from the available options.
3. Save the section.
4. Generate and inspect the JSON.

# Expected Result
- The selection is saved successfully.
- The JSON contains `productCardStyle: "type_one"` at the top level.

# Notes
- Repeat for all five supported values: type_one, type_two, type_three, type_four, type_five.

# Attachments
