---
tc_id: TC-PROD-JSON-007
title: Verify JSON Is Regenerated When Section Configuration Changes
priority: High
status:
  - completed
type: Regression
linked_requirement: PROD-REQ-031, PROD-REQ-038
tags:
  - test-case
  - json
  - regeneration
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Original Title | Old Title |
| Updated Title | New Title |
| Original Layout | grid_one |
| Updated Layout | horizontal |

# Preconditions
- A Product Section has been published with known JSON.
- Admin is logged into the Admin Panel.

# Steps
1. Note the existing JSON for the section.
2. Change the section title and layout.
3. Save and publish.
4. Regenerate the JSON.

# Expected Result
- The new JSON reflects the updated title and layout.
- The JSON is regenerated with the latest configuration values.
- The mobile app receives the updated JSON on next refresh.

# Notes

# Attachments
