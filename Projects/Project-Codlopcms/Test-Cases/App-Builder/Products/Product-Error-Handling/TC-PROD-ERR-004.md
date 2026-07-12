---
tc_id: TC-PROD-ERR-004
title: Verify Non-Boolean Value for Boolean Toggle Falls Back to Default
priority: Medium
status:
  - completed
type: Functional
linked_requirement: PROD-REQ-042
tags:
  - test-case
  - error-handling
  - boolean-fallback
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| enabled | "yes" (string) |
| showTitle | 123 (number) |
| transparentBackground | null |
| hideBorder | undefined |
| showPrice | "true" (string) |

# Preconditions
- A Product Section JSON is crafted with non-boolean values for boolean toggles.
- Section is published.
- Mobile app is connected to the backend.

# Steps
1. The mobile app fetches the JSON.
2. The app processes each boolean toggle field.
3. Observe the rendered output.

# Expected Result
- The section renders without crashing.
- Each invalid boolean field falls back to its documented default value.
- For toggles defaulting to `false` (e.g., `transparentBackground`, `hideBorder`, `showPrice`), the feature is off.
- For `showTitle`, the default is `true` (title is shown).

# Notes

# Attachments
