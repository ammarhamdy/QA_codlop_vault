---
tc_id: TC-CAT-CRE-005
title: Newly created section is hidden until explicitly enabled
priority: High
status:
  - completed
type: Functional
linked_requirement: CAT-REQ-001, CAT-REQ-033
tags:
  - test-case
  - admin-panel
  - creation
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Section enabled | false (initial state) |

# Preconditions
- A new Categories section has just been created but not yet saved with enabled=true.

# Steps
1. Create a new Categories section without enabling it.
2. Save the section.
3. Inspect the generated JSON.
4. Load the Home screen on the mobile app.

# Expected Result
- The `enabled` field in the generated JSON is `false`.
- The section does not appear on the mobile app's Home screen.
- Other Home screen sections render normally without a gap.

# Notes
# Attachments
