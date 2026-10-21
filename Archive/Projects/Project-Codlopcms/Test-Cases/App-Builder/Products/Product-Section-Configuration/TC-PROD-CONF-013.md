---
tc_id: TC-PROD-CONF-013
title: Verify Admin Can Configure Corner Radius and Padding
priority: Low
status:
  - completed
type: Functional
linked_requirement: PROD-REQ-013
tags:
  - test-case
  - configuration
  - style
  - geometry
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| radius | 12 |
| padding | 16 |

# Preconditions
- Admin is logged into the Admin Panel.
- A Product Section is open for editing.

# Steps
1. Set `radius` to 12.
2. Set `padding` to 16.
3. Save and publish.
4. Generate and inspect the JSON.
5. View on the mobile app.

# Expected Result
- The JSON contains `radius: 12` and `padding: 16` inside the `style` object.
- The mobile app applies the corner radius and padding to the section container.

# Notes
- Both fields accept only non-negative numeric values.

# Attachments
