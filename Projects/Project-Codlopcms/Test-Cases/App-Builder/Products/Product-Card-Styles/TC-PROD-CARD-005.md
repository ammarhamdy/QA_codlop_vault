---
tc_id: TC-PROD-CARD-005
title: Verify Mobile App Does Not Render Conflicting Card Styles
priority: Medium
status: Ready
type: Functional
linked_requirement: PROD-REQ-011
tags:
  - test-case
  - card-style
  - inconsistency
  - error-handling
---

# Test Data
| Field | Value |
| ----- | ----- |
| Top-level productCardStyle | type_one |
| settings.productCardStyle | type_five |

# Preconditions
- A JSON payload is crafted where the two `productCardStyle` values differ.
- Mobile app is connected to the backend.

# Steps
1. Deploy JSON where top-level `productCardStyle` is "type_one" and `settings.productCardStyle` is "type_five".
2. Load the Home screen on the mobile app.

# Expected Result
- The mobile app does not render conflicting card styles.
- The section may be excluded from rendering or one value takes precedence with a diagnostic log.
- No app crash occurs.

# Notes
- The exact fallback behavior depends on implementation; the key requirement is that no conflicting rendering occurs.

# Attachments
