---
tc_id: TC-CUS-REV-088
title: Hide the Section Border When showBorder Is Disabled
priority: Medium
status: Draft
type: Functional
linked_requirement: CUS-REV-REQ-033
tags:
  - test-case
  - customer-review
  - style
  - showBorder
  - rendering
  - negative
---

# Test Data
| Field | Value |
| ----- | ----- |
| style.showBorder | false |

# Preconditions
- A Customer Review section with `style.showBorder: false` is saved.
- The mobile application has been refreshed with the latest configuration.

# Steps
1. Retrieve the generated JSON configuration.
2. Verify the `style.showBorder` value is `false`.
3. Open the mobile application and navigate to the home screen.
4. Observe the Customer Review section.

# Expected Result
- The generated JSON reflects `style.showBorder: false`.
- When `showBorder` is `false`, the Mobile App hides the border around the Customer Review section.

# Notes

# Attachments