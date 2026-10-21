---
tc_id: TC-PROD-DEF-002
title: Verify Missing Optional Settings Fields Use Documented Defaults
priority: Medium
status:
  - completed
type: Functional
linked_requirement: PROD-REQ-040
tags:
  - test-case
  - defaults
  - settings
  - optional-fields
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| settings object | {} (empty) |

# Preconditions
- A Product Section JSON is generated with an empty `settings` object (all optional settings fields omitted).
- All required fields are present and valid.
- Section is enabled and published.

# Steps
1. The mobile app fetches the JSON.
2. The app renders the section with the empty settings object.
3. Observe the behavior and visibility of section elements.

# Expected Result
- The section renders successfully (does not fail validation).
- Each missing optional settings field is substituted with its documented default:
  - `showTitle`: defaults to `true` (title is shown)
  - `showPrice`: defaults to `false` (price is hidden)
  - `highlight`: defaults to `"none"` (no badge)
  - `productCardStyle`: defaults to the top-level `productCardStyle` value

# Notes
- Boolean toggles default to `false` except `showTitle`, which defaults to `true`.

# Attachments
