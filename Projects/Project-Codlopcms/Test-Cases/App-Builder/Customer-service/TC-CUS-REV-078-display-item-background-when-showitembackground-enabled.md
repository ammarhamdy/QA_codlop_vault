---
tc_id: TC-CUS-REV-078
title: Display the Review Item Background When showItemBackground Is Enabled
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
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| style.itemBackground | #f4f6f8 |
| style.showItemBackground | true |

# Preconditions
- A Customer Review section with `style.itemBackground: "#f4f6f8"` and `style.showItemBackground: true` is saved.
- The mobile application has been refreshed with the latest configuration.

# Steps
1. Retrieve the generated JSON configuration.
2. Verify the `style.showItemBackground` value is `true`.
3. Open the mobile application and navigate to the home screen.
4. Observe the background of the customer review items.

# Expected Result
- The Customer Review section contains a `style.showItemBackground` attribute.
- The generated JSON reflects `style.showItemBackground: true`.
- When `showItemBackground` is `true`, the Mobile App displays the configured `style.itemBackground` color for each review item.

# Notes

# Attachments