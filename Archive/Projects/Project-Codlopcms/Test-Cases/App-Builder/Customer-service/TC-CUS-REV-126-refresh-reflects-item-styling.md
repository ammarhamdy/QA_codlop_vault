---
tc_id: TC-CUS-REV-126
title: Verify Customer Review Item Styling Changes Are Reflected After Refresh
priority: High
status: Draft
type: Regression
linked_requirement: CUS-REV-REQ-043
tags:
  - test-case
  - customer-review
  - refresh
  - item-styling
  - regression
---

# Test Data
| Field | Value |
| ----- | ----- |
| style.itemBackground (after) | #ffffff |
| style.itemRadius (after) | 8 |
| style.showItemBackground | true |

# Preconditions
- A Customer Review section is rendered in the Mobile App.
- The review item styling (e.g., `style.itemBackground` and `style.itemRadius`) has been changed in the App Builder and saved.

# Steps
1. Note the current appearance of the review items.
2. Refresh the mobile application configuration.
3. Observe the appearance of the review items after refresh.

# Expected Result
- Changes to Customer Review item styling are reflected after refresh.
- The Mobile App applies the updated review item background color and radius.

# Notes

# Attachments