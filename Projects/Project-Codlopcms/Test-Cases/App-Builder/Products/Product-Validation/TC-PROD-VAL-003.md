---
tc_id: TC-PROD-VAL-003
title: Verify Save (Draft) Is Allowed Even with Missing Required Fields
priority: Medium
status: Ready
type: Validation
linked_requirement: PROD-REQ-032
tags:
  - test-case
  - validation
  - draft
  - save
---

# Test Data
| Field | Value |
| ----- | ----- |
| section_key | (not selected) |
| productCardStyle | (not selected) |

# Preconditions
- Admin is logged into the Admin Panel.
- A partially configured Product Section is open.

# Steps
1. Leave required fields empty.
2. Attempt to save as draft (not publish).

# Expected Result
- Save (draft) is allowed even with missing required fields.
- The section is saved in its current (incomplete) state.
- The admin can return later to complete and publish.

# Notes
- Validation should only block publishing, not saving as draft.

# Attachments
