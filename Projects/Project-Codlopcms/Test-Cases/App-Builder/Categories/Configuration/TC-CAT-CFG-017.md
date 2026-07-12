---
tc_id: TC-CAT-CFG-017
title: Toggle showPrice on category items
priority: Medium
status:
  - completed
type: Functional
linked_requirement: CAT-REQ-020
tags:
  - test-case
  - admin-panel
  - configuration
  - settings
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| showPrice | true / false |
| Category source | Provides price data |

# Preconditions
- A Categories section is configured with a category source that includes price information.

# Steps
1. Set showPrice to true. Save.
2. On the mobile app, verify prices are displayed on category items that have price data.
3. Edit and set showPrice to false. Save.
4. On the mobile app, verify prices are hidden on all category items.

# Expected Result
- showPrice accepts boolean true/false.
- Price is rendered only when both showPrice is true AND the resolved category data includes a price value.
- When showPrice is false, price is hidden regardless of available price data.

# Notes
# Attachments
