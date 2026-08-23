---
tc_id: TC-CUS-REV-076
title: Verify the Review Item Background Color Is Applied in the Mobile App
priority: Medium
status: Draft
type: Regression
linked_requirement: CUS-REV-REQ-029
tags:
  - test-case
  - customer-review
  - style
  - itemBackground
  - rendering
  - regression
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| style.itemBackground | #f4f6f8 |
| style.showItemBackground | true |
| Review Items | 3 items configured |

# Preconditions
- A Customer Review section with `style.itemBackground: "#f4f6f8"` and `style.showItemBackground: true` is saved.
- The mobile application has been refreshed with the latest configuration.

# Steps
1. Open the mobile application.
2. Navigate to the home screen.
3. Locate the Customer Review section.
4. Observe the background color of each customer review item.

# Expected Result
- The Mobile App applies the configured background color (#f4f6f8) to each customer review item when item background display is enabled.

# Notes

# Attachments