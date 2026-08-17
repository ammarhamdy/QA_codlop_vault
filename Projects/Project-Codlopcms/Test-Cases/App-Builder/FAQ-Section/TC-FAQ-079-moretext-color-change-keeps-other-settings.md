---
tc_id: TC-FAQ-079
title: Verify Changing showMoreTextColor Does Not Modify Other Settings or Styles
priority: Medium
status: Draft
type: Functional
linked_requirement: FAQ-REQ-034
tags:
  - test-case
  - faq
  - settings
  - showMoreTextColor
  - isolation
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| settings.showMoreTextColor (before) | #0077ff |
| settings.showTitle | true |
| settings.showMoreTextColor (after) | #cc0000 |

# Preconditions
- Administrator is logged into the App Builder.
- An FAQ section with `settings.showMoreTextColor: "#0077ff"` and `settings.showTitle: true` exists and is open for editing.

# Steps
1. Open the FAQ section for editing.
2. Change the more/action text color to #cc0000.
3. Save the section.
4. Retrieve the generated JSON configuration and inspect the settings and style objects.

# Expected Result
- Changing `showMoreTextColor` does not modify other FAQ section settings or styles.
- The generated JSON contains `settings.showMoreTextColor: "#cc0000"` while the other settings (e.g., `settings.showTitle: true`) remain unchanged.

# Notes

# Attachments