---
tc_id: TC-PROD-LAY-006
title: Verify Unsupported section_key Values Cause Section Exclusion on Mobile
priority: High
status: Ready
type: Functional
linked_requirement: PROD-REQ-044
tags:
  - test-case
  - layout
  - error-handling
  - mobile
---

# Test Data
| Field | Value |
| ----- | ----- |
| section_key | unsupported_layout |

# Preconditions
- A Product Section JSON is generated with an unsupported `section_key` value.
- Mobile app is connected to the backend.

# Steps
1. Generate JSON with `section_key: "unsupported_layout"`.
2. Load the Home screen on the mobile app.
3. Inspect the rendered sections.

# Expected Result
- The section with the unsupported `section_key` is excluded from rendering.
- No app crash occurs.
- The error is logged for diagnostics.
- Other sections on the Home screen render normally.

# Notes

# Attachments
