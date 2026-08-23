---
tc_id: TC-CUS-REV-122
title: Verify Added Customer Review Items Are Displayed After Refresh
priority: High
status: Draft
type: Regression
linked_requirement: CUS-REV-REQ-043
tags:
  - test-case
  - customer-review
  - refresh
  - added-items
  - regression
---

# Test Data
| Field | Value |
| ----- | ----- |
| Review Items (before) | 2 items configured |
| Review Item (added) | Priya K., rate 5, "Great customer service and support." |

# Preconditions
- A Customer Review section with 2 review items is rendered in the Mobile App.
- A new review item "Priya K." has been added in the App Builder and saved.

# Steps
1. Note the number of review items displayed in the Mobile App.
2. Refresh the mobile application configuration.
3. Note the number of review items displayed after refresh.

# Expected Result
- Added customer review items are displayed after refresh.
- The Customer Review section displays 3 review items, including the newly added "Priya K.".

# Notes

# Attachments