---
tc_id: TC-CUS-REV-038
title: Verify the Removed Review Is No Longer Displayed in the Mobile App
priority: High
status: Draft
type: Regression
linked_requirement: CUS-REV-REQ-016
tags:
  - test-case
  - customer-review
  - remove
  - rendering
  - regression
  - negative
---

# Test Data
| Field | Value |
| ----- | ----- |
| Removed Review Item | Sarah M. (rate 5, review "Excellent product, highly recommended!") |
| Remaining Review Item | John D. (rate 4, review "Very good quality and fast delivery.") |

# Preconditions
- A Customer Review section had the "Sarah M." review removed and was saved.
- The mobile application has been refreshed with the latest configuration.

# Steps
1. Open the mobile application.
2. Navigate to the home screen.
3. Locate the Customer Review section.
4. Observe the displayed review items.

# Expected Result
- The Mobile App no longer displays the removed review after the updated configuration is retrieved.
- The remaining review item "John D." is still displayed.

# Notes

# Attachments