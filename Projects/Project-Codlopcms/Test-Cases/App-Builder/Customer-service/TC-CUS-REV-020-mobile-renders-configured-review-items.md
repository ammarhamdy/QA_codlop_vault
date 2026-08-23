---
tc_id: TC-CUS-REV-020
title: Verify the Mobile App Receives and Renders the Configured Customer Review Items
priority: High
status: Draft
type: Regression
linked_requirement: CUS-REV-REQ-009
tags:
  - test-case
  - customer-review
  - items
  - rendering
  - regression
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| Review Item 1 | Sarah M., 5, "Excellent product, highly recommended!" |
| Review Item 2 | John D., 4, "Very good quality and fast delivery." |

# Preconditions
- A Customer Review section with the two review items above is saved.
- The mobile application has been refreshed with the latest configuration.

# Steps
1. Open the mobile application.
2. Navigate to the home screen.
3. Locate the Customer Review section.
4. Observe the displayed review items.

# Expected Result
- The Mobile App receives the configured customer review items.
- The Mobile App renders the configured customer review items within the Customer Review section.

# Notes

# Attachments