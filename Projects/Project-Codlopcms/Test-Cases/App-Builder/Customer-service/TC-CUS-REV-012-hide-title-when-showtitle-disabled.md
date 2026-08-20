---
tc_id: TC-CUS-REV-012
title: Hide the Section Title When showTitle Is Disabled
priority: Medium
status: Draft
type: Functional
linked_requirement: CUS-REV-REQ-006
tags:
  - test-case
  - customer-review
  - showTitle
  - rendering
  - negative
---

# Test Data
| Field | Value |
| ----- | ----- |
| title | Customer Reviews |
| settings.showTitle | false |

# Preconditions
- Administrator is logged into the App Builder.
- A Customer Review section with a configured title and `settings.showTitle: false` is saved.

# Steps
1. Retrieve the generated JSON configuration.
2. Verify the `settings.showTitle` value is `false`.
3. Provide the configuration to the Mobile App.
4. Open the home screen in the Mobile App.
5. Observe the Customer Review section title.

# Expected Result
- The generated JSON reflects `settings.showTitle: false`.
- When `showTitle` is `false`, the Mobile App does not display the section title.
- The configured `title` value is still present in the configuration.

# Notes

# Attachments