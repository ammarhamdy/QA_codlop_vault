---
tc_id: TC-PROD-JSON-001
title: Verify Generated JSON Contains All Required Top-Level Fields
priority: High
status:
  - completed
type: API
linked_requirement: PROD-REQ-031
tags:
  - test-case
  - json
  - generation
  - positive
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Section ID | auto-generated |
| Title | Featured Products |
| Layout | grid_two |
| section_key | grid_two |
| productCardStyle | type_one |
| Type | product |
| Enabled | true |
| Background | #ffffff |
| showTitle | true |

# Preconditions
- Admin is logged into the Admin Panel.
- A Product Section is fully configured with all required fields set.
- The section is saved/published.

# Steps
1. Generate the JSON output for the Product Section.
2. Validate the JSON structure against the documented schema.

# Expected Result
- The JSON is well-formed and valid.
- All required top-level fields are present:
  - `id` (string, non-empty)
  - `section_key` (string, one of supported values)
  - `productCardStyle` (string, one of supported values)
  - `type` (string, value "product")
  - `layout` (string, matching section_key)
  - `title` (string)
  - `enabled` (boolean)
  - `style` (object)
  - `settings` (object)
- No extra unexpected top-level fields are present.

# Notes

# Attachments
