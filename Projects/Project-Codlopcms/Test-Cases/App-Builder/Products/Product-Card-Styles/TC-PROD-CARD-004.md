---
tc_id: TC-PROD-CARD-004
title: Verify productCardStyle Consistency Between Top-Level and settings
priority: Medium
status: Ready
type: Functional
linked_requirement: PROD-REQ-011
tags:
  - test-case
  - card-style
  - consistency
---

# Test Data
| Field | Value |
| ----- | ----- |
| Product Card Style Selected | type_three |

# Preconditions
- Admin is logged into the Admin Panel.
- A Product Section is open for editing.

# Steps
1. Select productCardStyle "type_three".
2. Save the section.
3. Generate and inspect the JSON.

# Expected Result
- Top-level `productCardStyle` is set to `type_three`.
- `settings.productCardStyle` is also set to `type_three`.
- Both values are identical.

# Notes
- The Admin Panel must write the same value to both locations.

# Attachments
