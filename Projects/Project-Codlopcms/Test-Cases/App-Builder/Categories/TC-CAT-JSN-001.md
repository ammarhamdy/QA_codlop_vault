---
tc_id: TC-CAT-JSN-001
title: Generated JSON includes all required top-level fields
priority: High
status:
  - completed
type: Functional
linked_requirement: CAT-REQ-036
tags:
  - test-case
  - json
  - backend
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Section configured | Fully configured and enabled |

# Preconditions
- A Categories section has been fully configured (layout, style, settings, categories, enabled=true) and saved.

# Steps
1. Retrieve the generated Home screen JSON (via API or direct inspection).
2. Locate the Categories section object.
3. Verify the presence and types of each required top-level field.

# Expected Result
The Categories JSON object contains all required top-level fields:

| Field | Expected Type |
| ----- | ------------- |
| `id` | string |
| `section_key` | string |
| `type` | string (must equal "category") |
| `layout` | string |
| `title` | string |
| `enabled` | boolean |
| `style` | object |
| `settings` | object |

# Notes
# Attachments
