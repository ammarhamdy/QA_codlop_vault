---
tc_id: TC-PROD-CONF-015
title: Verify Admin Can Configure Title Gap and Section Spacing
priority: Low
status:
  - completed
type: Functional
linked_requirement: PROD-REQ-018
tags:
  - test-case
  - configuration
  - spacing
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| titleGap | 8 |
| gapTop | 16 |
| gapBottom | 16 |

# Preconditions
- Admin is logged into the Admin Panel.
- A Product Section is open for editing.

# Steps
1. Set `titleGap` to 8.
2. Set `gapTop` to 16.
3. Set `gapBottom` to 16.
4. Save and publish.
5. Generate and inspect the JSON.

# Expected Result
- The JSON contains `titleGap: 8`, `gapTop: 16`, `gapBottom: 16` inside the `style` object.
- The values are persisted in units consistent with mobile rendering expectations.

# Notes
- All fields accept only non-negative numeric values.

# Attachments
