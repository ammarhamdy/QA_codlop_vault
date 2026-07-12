---
tc_id: TC-PROD-DEF-008
title: Verify Missing Title Gap and Section Spacing Default to Renderer Defaults
priority: Low
status:
  - completed
type: Functional
linked_requirement: PROD-REQ-039
tags:
  - test-case
  - defaults
  - spacing
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| style.titleGap | (missing) |
| style.gapTop | (missing) |
| style.gapBottom | (missing) |

# Preconditions
- A Product Section JSON is generated with spacing fields omitted from `style`.
- Section is enabled and published.

# Steps
1. The mobile app fetches the JSON.
2. The app renders the section.

# Expected Result
- `titleGap` defaults to the renderer's default title gap.
- `gapTop` defaults to the renderer's default top gap.
- `gapBottom` defaults to the renderer's default bottom gap.
- The section renders with standard spacing.

# Notes

# Attachments
