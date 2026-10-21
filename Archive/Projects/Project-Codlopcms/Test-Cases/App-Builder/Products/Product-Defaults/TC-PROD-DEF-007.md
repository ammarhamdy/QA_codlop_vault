---
tc_id: TC-PROD-DEF-007
title: Verify Missing Radius and Padding Default to Renderer Defaults
priority: Low
status:
  - completed
type: Functional
linked_requirement: PROD-REQ-039
tags:
  - test-case
  - defaults
  - geometry
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| style.radius | (missing) |
| style.padding | (missing) |

# Preconditions
- A Product Section JSON is generated with `radius` and `padding` omitted from `style`.
- Section is enabled and published.

# Steps
1. The mobile app fetches the JSON.
2. The app renders the section.

# Expected Result
- `radius` defaults to the renderer's default corner radius.
- `padding` defaults to the renderer's default padding.
- The section renders without layout issues.

# Notes

# Attachments
