---
tc_id: TC-CAT-CFG-018
title: Configure highlight badge mode
priority: Low
status:
  - closed
type: Functional
linked_requirement: CAT-REQ-021
tags:
  - test-case
  - admin-panel
  - configuration
  - settings
---

# Test Data
| Field | Value |
| ----- | ----- |
| highlight | "none" / "discount" / (other supported) |

# Preconditions
- A Categories section is in editing mode.

# Steps
1. Open the highlight selector.
2. Verify it presents a closed list of options.
3. Select "none". Save.
4. On the mobile app, verify no badge is rendered on any category item.
5. Edit, select a non-none highlight mode (e.g., "discount"). Save.
6. On the mobile app, verify the badge is rendered on applicable category items.

# Expected Result
- highlight is selected from a closed list.
- When highlight is "none", no badge is rendered on any category item.
- Generated JSON reflects the highlight value.
- Highlight badge colors (from style) are applied when highlight is not "none".

# Notes
# Attachments
