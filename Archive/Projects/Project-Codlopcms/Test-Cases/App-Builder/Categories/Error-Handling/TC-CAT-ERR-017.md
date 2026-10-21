---
tc_id: TC-CAT-ERR-017
title: Type field with incorrect value routes to wrong renderer
priority: High
status:
  - closed
type: Functional
linked_requirement: CAT-REQ-005, CAT-REQ-041
tags:
  - test-case
  - mobile
  - error-handling
---

# Test Data
| Field | Value |
| ----- | ----- |
| type | "banner" (not "category") |

# Preconditions
- The Home screen JSON is manually modified to change `type` from "category" to another value.

# Steps
1. Load the Home screen on the mobile app.
2. Observe the rendering behavior.

# Expected Result
- If the type is not "category", the section is not dispatched to the Categories rendering module.
- The section is either handled by another module (if type matches a known module) or excluded from rendering.
- No crash occurs.

# Notes
# Attachments
