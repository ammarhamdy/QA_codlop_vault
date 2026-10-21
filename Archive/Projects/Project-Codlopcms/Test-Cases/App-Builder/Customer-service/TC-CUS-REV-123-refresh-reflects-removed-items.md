---
tc_id: TC-CUS-REV-123
title: Verify Removed Customer Review Items Are No Longer Displayed After Refresh
priority: High
status: Draft
type: Regression
linked_requirement: CUS-REV-REQ-043
tags:
  - test-case
  - customer-review
  - refresh
  - removed-items
  - regression
---

# Test Data
| Field | Value |
| ----- | ----- |
| Review Items (before) | 3 items configured |
| Removed Review Item | John D. (rate 4, "Very good quality and fast delivery.") |

# Preconditions
- A Customer Review section with 3 review items is rendered in the Mobile App.
- The review item "John D." has been removed in the App Builder and saved.

# Steps
1. Note the review items displayed in the Mobile App.
2. Refresh the mobile application configuration.
3. Note the review items displayed after refresh.

# Expected Result
- Removed customer review items are no longer displayed after refresh.
- The review item "John D." is no longer displayed; the remaining review items are still displayed.

# Notes

# Attachments