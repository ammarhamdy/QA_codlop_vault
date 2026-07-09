---
tc_id: TC-CAT-CFG-026
title: Enable and disable Categories section
priority: High
status: Draft
type: Functional
linked_requirement: CAT-REQ-033, CAT-REQ-034
tags:
  - test-case
  - admin-panel
  - configuration
  - enable-disable
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| enabled | true / false |

# Preconditions
- A fully configured Categories section exists in a disabled state.
- Other sections exist on the Home screen.

# Steps
1. Set enabled to true. Save.
2. On the mobile app, verify the section appears on the Home screen.
3. Set enabled to false. Save.
4. On the mobile app, refresh and verify the section is hidden.
5. Verify no layout gap or placeholder remains where the section was.
6. Verify adjacent sections render as if the disabled section did not exist.

# Expected Result
- enabled accepts boolean true/false.
- When enabled is false, the section is excluded from rendering.
- No visual gap or placeholder remains for the disabled section.
- Adjacent sections render normally without impact.

# Notes
# Attachments
