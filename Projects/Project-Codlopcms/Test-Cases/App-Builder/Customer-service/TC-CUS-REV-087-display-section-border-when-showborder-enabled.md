---
tc_id: TC-CUS-REV-087
title: Display the Section Border When showBorder Is Enabled
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
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| style.showBorder | true |

# Preconditions
- A Customer Review section with `style.showBorder: true` is saved.
- The mobile application has been refreshed with the latest configuration.

# Steps
1. Retrieve the generated JSON configuration.
2. Verify the `style.showBorder` value is `true`.
3. Open the mobile application and navigate to the home screen.
4. Observe the Customer Review section.

# Expected Result
- The Customer Review section contains a `style.showBorder` attribute.
- The generated JSON reflects `style.showBorder: true`.
- When `showBorder` is `true`, the Mobile App displays a border around the Customer Review section.

# Notes

# Attachments