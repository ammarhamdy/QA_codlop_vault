---
tc_id: TC-CUS-REV-040
title: Verify the Mobile App Renders Customer Reviews in the Configured Order
priority: Medium
status: Draft
type: Regression
linked_requirement: CUS-REV-REQ-017
tags:
  - test-case
  - customer-review
  - order
  - rendering
  - regression
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| Review Item 1 | Sarah M. (rate 5) |
| Review Item 2 | John D. (rate 4) |
| Review Item 3 | Priya K. (rate 5) |

# Preconditions
- A Customer Review section with the three review items ordered as listed above is saved.
- The mobile application has been refreshed with the latest configuration.

# Steps
1. Open the mobile application.
2. Navigate to the home screen.
3. Locate the Customer Review section.
4. Observe the order in which the review items are displayed.

# Expected Result
- The Mobile App renders customer reviews in the same order as they appear in `settings.data-object` (Sarah M., John D., Priya K.).

# Notes

# Attachments