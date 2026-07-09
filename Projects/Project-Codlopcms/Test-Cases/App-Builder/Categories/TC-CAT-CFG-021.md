---
tc_id: TC-CAT-CFG-021
title: Changing categorySource clears invalid category selections
priority: Medium
status:
  - completed
type: Functional
linked_requirement: CAT-REQ-024
tags:
  - test-case
  - admin-panel
  - configuration
  - source
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Initial source | external_categories (with selected category IDs) |
| New source | A different source without those categories |

# Preconditions
- A Categories section has been configured with specific categories selected from source "external_categories".

# Steps
1. Change the categorySource to a different source that does not support the previously selected categories.
2. Observe whether previously selected categories are cleared.
3. Save the section.

# Expected Result
- Changing categorySource invalidates/clears previously selected categories that are not valid for the new source.
- A confirmation or warning may be displayed indicating that the selection will be cleared.
- The section saves without the previously selected categories.

# Notes
Exact behavior pending confirmation (see spec Open Questions item #11).
# Attachments
