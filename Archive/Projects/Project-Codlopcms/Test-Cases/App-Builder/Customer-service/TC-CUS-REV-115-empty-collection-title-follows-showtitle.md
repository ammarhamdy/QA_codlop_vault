---
tc_id: TC-CUS-REV-115
title: Verify the Section Title Follows the Configured showTitle Behavior When No Review Items Are Available
priority: Medium
status: Draft
type: Functional
linked_requirement: CUS-REV-REQ-041
tags:
  - test-case
  - customer-review
  - empty
  - showTitle
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| settings.data-object | [] (empty array) |
| title | Customer Reviews |
| settings.showTitle | true |

# Preconditions
- A Customer Review configuration has an empty `settings.data-object` array and `settings.showTitle: true`.

# Steps
1. Submit the Customer Review configuration to the Mobile App.
2. Load the home screen.
3. Observe the Customer Review section title.

# Expected Result
- The Customer Review section title follows the configured `settings.showTitle` behavior when no review items are available.
- When `showTitle` is `true`, the title "Customer Reviews" is displayed even though no review items exist.

# Notes

# Attachments