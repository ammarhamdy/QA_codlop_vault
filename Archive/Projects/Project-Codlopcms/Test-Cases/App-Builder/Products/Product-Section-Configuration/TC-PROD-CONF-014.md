---
tc_id: TC-PROD-CONF-014
title: Verify Admin Can Configure Shadow Style
priority: Low
status:
  - completed
type: Functional
linked_requirement: PROD-REQ-014
tags:
  - test-case
  - configuration
  - style
  - shadow
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| shadow | none |

# Preconditions
- Admin is logged into the Admin Panel.
- A Product Section is open for editing.

# Steps
1. Select a `shadow` style from the available options (e.g., "none").
2. Save and publish.
3. Generate and inspect the JSON.
4. View on the mobile app.

# Expected Result
- The JSON contains the `shadow` field with the selected value.
- The mobile app applies the corresponding shadow style to the section container.
- If "none" is selected, no shadow is rendered.

# Notes
- The Admin Panel should enforce selection from a closed list of supported values.

# Attachments
