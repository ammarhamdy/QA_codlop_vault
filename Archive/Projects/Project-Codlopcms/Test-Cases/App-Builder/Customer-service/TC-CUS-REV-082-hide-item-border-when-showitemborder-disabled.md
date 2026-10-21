---
tc_id: TC-CUS-REV-082
title: Hide the Review Item Border When showItemBorder Is Disabled
priority: Medium
status: Draft
type: Functional
linked_requirement: CUS-REV-REQ-031
tags:
  - test-case
  - customer-review
  - style
  - showItemBorder
  - rendering
  - negative
---

# Test Data
| Field | Value |
| ----- | ----- |
| style.showItemBorder | false |

# Preconditions
- A Customer Review section with `style.showItemBorder: false` is saved.
- The mobile application has been refreshed with the latest configuration.

# Steps
1. Retrieve the generated JSON configuration.
2. Verify the `style.showItemBorder` value is `false`.
3. Open the mobile application and navigate to the home screen.
4. Observe the customer review items.

# Expected Result
- The generated JSON reflects `style.showItemBorder: false`.
- When `showItemBorder` is `false`, the Mobile App hides the border around each customer review item.

# Notes

# Attachments