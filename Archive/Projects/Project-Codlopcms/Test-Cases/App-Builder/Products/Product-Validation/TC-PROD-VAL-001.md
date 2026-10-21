---
tc_id: TC-PROD-VAL-001
title: Verify All Required Fields Are Validated Before Publish
priority: High
status:
  - completed
type: Validation
linked_requirement: PROD-REQ-032
tags:
  - test-case
  - validation
  - required-fields
  - publish
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| section_key | (missing) |
| productCardStyle | (missing) |
| productSource | (missing) |

# Preconditions
- Admin is logged into the Admin Panel.
- A Product Section is open for editing with all required fields left empty.

# Steps
1. Attempt to publish the section with missing required fields.
2. Observe the validation errors.

# Expected Result
- Publishing is blocked.
- Validation errors are displayed for each missing/invalid field:
  - "Layout selection is required."
  - "Product card style selection is required."
  - "Product source selection is required."
- The section remains in its current state.

# Notes
All Fields have default values, and not editable by typing but only from selection.  

# Attachments
