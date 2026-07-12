---
tc_id: TC-PROD-DEF-005
title: Verify Missing Highlight Mode Defaults to "none"
priority: Low
status:
  - completed
type: Functional
linked_requirement: PROD-REQ-040
tags:
  - test-case
  - defaults
  - highlight
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| settings.highlight | (missing) |

# Preconditions
- A Product Section JSON is generated with `highlight` omitted from `settings`.
- Section is enabled and published.

# Steps
1. The mobile app fetches the JSON.
2. The app renders the section.

# Expected Result
- `highlight` defaults to `"none"`.
- No badge is shown on any product card.

# Notes

# Attachments
