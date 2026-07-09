---
tc_id: TC-PROD-REND-007
title: Verify Mobile App Applies All Settings Fields
priority: High
status: Ready
type: Functional
linked_requirement: PROD-REQ-036
tags:
  - test-case
  - rendering
  - settings
  - mobile
---

# Test Data
| Field | Value |
| ----- | ----- |
| showTitle | true |
| showPrice | true |
| highlight | none |

# Preconditions
- A Product Section is configured with specific settings values.
- Section is enabled and published.
- Mobile app is connected to the backend.

# Steps
1. Open the mobile app Home screen.
2. Observe the behavior and visibility of section elements.

# Expected Result
- Section title is displayed (showTitle: true).
- Product prices are displayed (showPrice: true) for products with price data.
- No highlight badge is shown (highlight: "none").

# Notes

# Attachments
