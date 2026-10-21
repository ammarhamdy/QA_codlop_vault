---
tc_id: TC-CUS-REV-079
title: Hide the Review Item Background When showItemBackground Is Disabled
priority: Medium
status: Draft
type: Functional
linked_requirement: CUS-REV-REQ-030
tags:
  - test-case
  - customer-review
  - style
  - showItemBackground
  - rendering
  - negative
---

# Test Data
| Field | Value |
| ----- | ----- |
| style.itemBackground | #f4f6f8 |
| style.showItemBackground | false |

# Preconditions
- A Customer Review section with `style.itemBackground: "#f4f6f8"` and `style.showItemBackground: false` is saved.
- The mobile application has been refreshed with the latest configuration.

# Steps
1. Retrieve the generated JSON configuration.
2. Verify the `style.showItemBackground` value is `false`.
3. Open the mobile application and navigate to the home screen.
4. Observe the background of the customer review items.

# Expected Result
- The generated JSON reflects `style.showItemBackground: false`.
- When `showItemBackground` is `false`, the Mobile App hides the review item background.

# Notes

# Attachments