---
tc_id: TC-PROD-JSON-003
title: Verify Generated JSON Includes settings Object with All Configured Properties
priority: High
status:
  - completed
type: API
linked_requirement: PROD-REQ-031, PROD-REQ-019, PROD-REQ-023, PROD-REQ-024
tags:
  - test-case
  - json
  - settings
  - generation
run_result: pass
---

# Test Data
| Field            | Value    |
| ---------------- | -------- |
| showTitle        | true     |
| productCardStyle | type_two |

# Preconditions
- Admin is logged into the Admin Panel.
- A Product Section is configured with the above settings values.
- The section is saved/published.

# Steps
1. Generate the JSON output.
2. Inspect the `settings` object.

# Expected Result
- The `settings` object contains all configured properties with their correct values:
  - `showTitle`: true
  - `showPrice`: true
  - `highlight`: "none"
  - `productCardStyle`: "type_two"

# Notes

# Attachments
