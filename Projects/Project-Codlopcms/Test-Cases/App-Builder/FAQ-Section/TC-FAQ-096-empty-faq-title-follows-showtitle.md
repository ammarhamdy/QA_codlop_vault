---
tc_id: TC-FAQ-096
title: Verify Empty FAQ Section Title Follows showTitle Behavior
priority: Medium
status: Draft
type: Regression
linked_requirement: FAQ-REQ-040
tags:
  - test-case
  - faq
  - empty
  - showTitle
  - regression
---

# Test Data
| Field | Value |
| ----- | ----- |
| Title | Empty FAQ |
| settings.data-object | [] (empty array) |
| settings.showTitle | true |

# Preconditions
- An FAQ configuration has `settings.data-object` empty and `settings.showTitle: true`.

# Steps
1. Submit the FAQ configuration to the Mobile App.
2. Load the home screen.
3. Observe the FAQ section title.

# Expected Result
- The FAQ section title follows the configured `settings.showTitle` behavior when no FAQ items are available.
- With `showTitle: true`, the title "Empty FAQ" is displayed even though no FAQ items are configured.

# Notes

# Attachments