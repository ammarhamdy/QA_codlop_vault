---
tc_id: TC-CUS-REV-124
title: Verify Customer Review Order Changes Are Reflected After Refresh
priority: High
status: Draft
type: Regression
linked_requirement: CUS-REV-REQ-043
tags:
  - test-case
  - customer-review
  - refresh
  - order
  - regression
---

# Test Data
| Field | Value |
| ----- | ----- |
| Order (before) | Sarah M., John D., Priya K. |
| Order (after) | Priya K., Sarah M., John D. |

# Preconditions
- A Customer Review section with review items ordered "Sarah M., John D., Priya K." is rendered in the Mobile App.
- The review item order has been changed to "Priya K., Sarah M., John D." in the App Builder and saved.

# Steps
1. Note the order of the review items in the Mobile App.
2. Refresh the mobile application configuration.
3. Note the order of the review items displayed after refresh.

# Expected Result
- Changes to the customer review order are reflected after refresh.
- The Mobile App displays the review items in the new order (Priya K., Sarah M., John D.).

# Notes

# Attachments