---
tc_id: TC-CAT-RND-009
title: "Generic rendering: new layout value uses existing template infrastructure"
priority: High
status:
  - completed
type: Functional
linked_requirement: CAT-REQ-039
tags:
  - test-case
  - mobile
  - rendering
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| layout | A newly added supported layout value |

# Preconditions
- A new layout value is added to the supported set (backend schema and mobile templates).

# Steps
1. Configure a Categories section with the new layout value.
2. Load the Home screen on the mobile app.
3. Verify the section renders using the correct template for that layout.

# Expected Result
- Rendering logic keys off `layout`/`section_key` to select the correct generic template.
- No hardcoded merchant/tenant-specific data is required for the new layout.
- The section renders correctly with the expected visual structure for that layout.

# Notes
# Attachments
