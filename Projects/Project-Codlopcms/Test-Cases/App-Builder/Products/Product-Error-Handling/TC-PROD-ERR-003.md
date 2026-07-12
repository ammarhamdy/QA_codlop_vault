---
tc_id: TC-PROD-ERR-003
title: Verify Invalid Hex Color in style Falls Back to Default
priority: Medium
status:
  - completed
type: Functional
linked_requirement: PROD-REQ-042
tags:
  - test-case
  - error-handling
  - invalid-color
  - fallback
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| background | "not-a-color" |
| titleColor | "#1234" |
| textColor | "#GGGGGG" |

# Preconditions
- A Product Section JSON is crafted with invalid hex colors in the `style` object.
- Section is published.
- Mobile app is connected to the backend.

# Steps
1. The mobile app fetches the JSON.
2. The app processes the style fields.
3. Observe the rendered section colors.

# Expected Result
- The section renders without crashing.
- Each invalid color field falls back to its documented default.
- Valid fields in the same or other sections render correctly.

# Notes

# Attachments
