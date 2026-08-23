---
tc_id: TC-CUS-REV-011
title: Display the Section Title When showTitle Is Enabled
priority: Medium
status: Draft
type: Functional
linked_requirement: CUS-REV-REQ-006
tags:
  - test-case
  - customer-review
  - showTitle
  - rendering
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| title | Customer Reviews |
| settings.showTitle | true |

# Preconditions
- Administrator is logged into the App Builder.
- A Customer Review section with a configured title and `settings.showTitle: true` is saved.

# Steps
1. Retrieve the generated JSON configuration.
2. Verify the `settings.showTitle` value is `true`.
3. Provide the configuration to the Mobile App.
4. Open the home screen in the Mobile App.
5. Observe the Customer Review section title.

# Expected Result
- The generated JSON reflects `settings.showTitle: true`.
- When `showTitle` is `true`, the Mobile App displays the configured section title.

# Notes

# Attachments