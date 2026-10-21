---
tc_id: TC-CUS-REV-092
title: Verify Changing showMoreTextColor Does Not Modify Other Settings or Styles
priority: Medium
status: Draft
type: Functional
linked_requirement: CUS-REV-REQ-034
tags:
  - test-case
  - customer-review
  - showMoreTextColor
  - data-integrity
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| settings.showMoreTextColor (before) | #0077ff |
| settings.showMoreTextColor (after) | #cc0000 |
| settings.showTitle | true |

# Preconditions
- Administrator is logged into the App Builder.
- A Customer Review section with `settings.showMoreTextColor: "#0077ff"` and `settings.showTitle: true` is open for editing.

# Steps
1. Change the more text color to #cc0000.
2. Save the section.
3. Retrieve the generated JSON configuration.
4. Inspect the `settings` and `style` objects.

# Expected Result
- Changing `showMoreTextColor` does not modify other Customer Review section settings or styles.
- The generated JSON contains `settings.showMoreTextColor: "#cc0000"` while the other settings (e.g., `settings.showTitle: true`) remain unchanged.

# Notes

# Attachments