---
tc_id: TC-CUS-REV-081
title: Display the Review Item Border When showItemBorder Is Enabled
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
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| style.showItemBorder | true |

# Preconditions
- A Customer Review section with `style.showItemBorder: true` is saved.
- The mobile application has been refreshed with the latest configuration.

# Steps
1. Retrieve the generated JSON configuration.
2. Verify the `style.showItemBorder` value is `true`.
3. Open the mobile application and navigate to the home screen.
4. Observe the customer review items.

# Expected Result
- The Customer Review section contains a `style.showItemBorder` attribute.
- The generated JSON reflects `style.showItemBorder: true`.
- When `showItemBorder` is `true`, the Mobile App displays a border around each customer review item.

# Notes

# Attachments