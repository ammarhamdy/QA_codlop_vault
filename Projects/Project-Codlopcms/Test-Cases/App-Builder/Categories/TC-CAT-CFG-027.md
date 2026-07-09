---
tc_id: TC-CAT-CFG-027
title: Disabled section retains its configuration after re-enable
priority: Low
status: Draft
type: Functional
linked_requirement: CAT-REQ-035
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
| title | "Seasonal Categories" |
| layout | type-two |
| style | (configured) |
| Categories | (selected) |

# Preconditions
- A fully configured Categories section is enabled and working.

# Steps
1. Note the current configuration (title, layout, style, settings, selected categories).
2. Set enabled to false and save.
3. Set enabled to true and save WITHOUT making any other changes.
4. Verify the section renders on the mobile app with the exact same configuration as before.

# Expected Result
- Disabling preserves all `style`, `settings`, and category selection data.
- Re-enabling restores the prior configuration without requiring re-entry.
- No configuration data is lost during the disable/enable cycle.

# Notes
# Attachments
