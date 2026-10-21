---
tc_id: TC-CUS-REV-084
title: Display the Section Background When showBackground Is Enabled
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
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| style.background | #f4f6f8 |
| style.showBackground | true |

# Preconditions
- A Customer Review section with `style.background: "#f4f6f8"` and `style.showBackground: true` is saved.
- The mobile application has been refreshed with the latest configuration.

# Steps
1. Retrieve the generated JSON configuration.
2. Verify the `style.showBackground` value is `true`.
3. Open the mobile application and navigate to the home screen.
4. Observe the Customer Review section background.

# Expected Result
- The Customer Review section contains a `style.showBackground` attribute.
- The generated JSON reflects `style.showBackground: true`.
- When `showBackground` is `true`, the Mobile App displays the configured `style.background` color for the Customer Review section.

# Notes

# Attachments