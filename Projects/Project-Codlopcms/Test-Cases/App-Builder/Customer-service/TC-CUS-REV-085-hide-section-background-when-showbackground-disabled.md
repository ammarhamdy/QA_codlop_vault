---
tc_id: TC-CUS-REV-085
title: Hide the Section Background When showBackground Is Disabled
priority: Medium
status: Draft
type: Functional
linked_requirement: CUS-REV-REQ-032
tags:
  - test-case
  - customer-review
  - style
  - showBackground
  - rendering
  - negative
---

# Test Data
| Field | Value |
| ----- | ----- |
| style.background | #f4f6f8 |
| style.showBackground | false |

# Preconditions
- A Customer Review section with `style.background: "#f4f6f8"` and `style.showBackground: false` is saved.
- The mobile application has been refreshed with the latest configuration.

# Steps
1. Retrieve the generated JSON configuration.
2. Verify the `style.showBackground` value is `false`.
3. Open the mobile application and navigate to the home screen.
4. Observe the Customer Review section background.

# Expected Result
- The generated JSON reflects `style.showBackground: false`.
- When `showBackground` is `false`, the Mobile App hides the Customer Review section background.

# Notes

# Attachments