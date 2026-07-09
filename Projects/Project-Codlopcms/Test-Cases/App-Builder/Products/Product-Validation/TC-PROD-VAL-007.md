---
tc_id: TC-PROD-VAL-007
title: Verify Validation Rejects Unsupported Enum Values
priority: High
status: Ready
type: Validation
linked_requirement: PROD-REQ-032, PROD-REQ-008, PROD-REQ-010
tags:
  - test-case
  - validation
  - enum
  - negative
---

# Test Data
| Field | Value |
| ----- | ----- |
| section_key | five_column_grid |
| productCardStyle | type_seven |
| productSource | random_source |

# Preconditions
- Admin is logged into the Admin Panel.
- A Product Section is open for editing.

# Steps
1. Attempt to set `section_key` to "five_column_grid" (unsupported).
2. Attempt to set `productCardStyle` to "type_seven" (unsupported).
3. Attempt to set `productSource` to "random_source" (unsupported).
4. Attempt to save/publish.

# Expected Result
- The Admin Panel rejects unsupported enum values.
- Validation errors are displayed for each invalid field.
- The section is not saved with invalid values.

# Notes
- The UI should use closed-list selectors to prevent entering unsupported values.

# Attachments
