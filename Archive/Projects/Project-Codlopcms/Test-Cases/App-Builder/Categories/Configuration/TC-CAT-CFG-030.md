---
tc_id: TC-CAT-CFG-030
title: Support multiple category source types (internal and external)
priority: Medium
status:
  - closed
type: Functional
linked_requirement: CAT-REQ-026
tags:
  - test-case
  - admin-panel
  - configuration
  - source
---

# Test Data
| Field | Value |
| ----- | ----- |
| Internal source | Platform-native category provider |
| External source | Third-party category API |

# Preconditions
- Admin Panel is accessible.

# Steps
1. Create a Categories section using an internal category source.
2. Verify categories are selectable from the internal source.
3. Create a second section using an external/third-party category source.
4. Verify categories are selectable from the external source.
5. Save both sections and inspect generated JSON.

# Expected Result
- At least two conceptual category sources are supported (internal and external).
- Internal selections populate `data-object`.
- External selections populate `data-strings`.
- Both sections render correctly on the mobile app.

# Notes
# Attachments
