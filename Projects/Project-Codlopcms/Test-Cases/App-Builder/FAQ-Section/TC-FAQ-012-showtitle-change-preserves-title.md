---
tc_id: TC-FAQ-012
title: Verify Changing showTitle Does Not Modify the Configured Title Value
priority: Medium
status:
  - completed
type: Functional
linked_requirement: FAQ-REQ-007
tags:
  - test-case
  - faq
  - title
  - visibility
  - data-integrity
  - positive
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Title | Help Center |
| settings.showTitle (before) | true |
| settings.showTitle (after) | false |

# Preconditions
- Administrator is logged into the App Builder.
- An FAQ section with title "Help Center" and `settings.showTitle: true` has been saved.

# Steps
1. Open the FAQ section for editing.
2. Change `settings.showTitle` from `true` to `false`.
3. Save the section.
4. Retrieve the generated JSON configuration.

# Expected Result
- Changing `showTitle` does not remove or modify the configured `title` value.
- The generated JSON still contains `title: "Help Center"` and `showTitle: false`.

# Notes

# Attachments