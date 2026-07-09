---
tc_id: TC-PROD-CONF-005
title: Verify Admin Can Toggle Section Enabled/Disabled
priority: High
status: Ready
type: Functional
linked_requirement: PROD-REQ-005
tags:
  - test-case
  - configuration
  - enable
  - disable
---

# Test Data
| Field | Value |
| ----- | ----- |
| Enabled | true → false |

# Preconditions
- Admin is logged into the Admin Panel.
- An enabled Product Section exists.

# Steps
1. Open the Product Section configuration.
2. Toggle the `enabled` switch from true to false.
3. Save the section.
4. Publish the changes.
5. Inspect the generated JSON.

# Expected Result
- The `enabled` field is set to `false` in the saved configuration.
- The section is excluded from rendering on the mobile Home screen.
- The section configuration remains intact.

# Notes
- The toggle should accept only boolean true/false values.

# Attachments
