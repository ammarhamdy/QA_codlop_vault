---
tc_id: TC-PROD-ERR-002
title: Verify Invalid Style or Settings Values Fall Back to Defaults
priority: Medium
status:
  - completed
type: Functional
linked_requirement: PROD-REQ-042
tags:
  - test-case
  - error-handling
  - invalid-values
  - fallback
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| background | "#ZZZZZZ" (invalid hex) |
| radius | -5 (negative) |
| showTitle | "not-a-boolean" |
| highlight | "invalid_highlight_mode" |

# Preconditions
- A Product Section JSON is crafted with invalid style and settings values.
- Section is published.
- Mobile app is connected to the backend.

# Steps
1. The mobile app fetches and parses the JSON.
2. The app processes each style and settings field.
3. Observe the rendered section.

# Expected Result
- The section renders (does not crash).
- Invalid fields fall back to their documented default values:
  - `background` falls back to default background color.
  - `radius` falls back to default corner radius.
  - `showTitle` falls back to default (true).
  - `highlight` falls back to default (none).
- Valid fields in the same section continue to apply normally.

# Notes

# Attachments
