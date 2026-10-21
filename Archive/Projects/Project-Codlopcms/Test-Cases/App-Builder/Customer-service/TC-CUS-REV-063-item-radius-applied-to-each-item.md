---
tc_id: TC-CUS-REV-063
title: Verify the Review Item Radius Is Applied to Each Review Item
priority: Medium
status: Draft
type: Regression
linked_requirement: CUS-REV-REQ-025
tags:
  - test-case
  - customer-review
  - style
  - itemRadius
  - rendering
  - regression
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| style.itemRadius | 12 |
| Review Items | 3 items configured |

# Preconditions
- A Customer Review section with `style.itemRadius: 12` and 3 review items is saved.
- The mobile application has been refreshed with the latest configuration.

# Steps
1. Open the mobile application.
2. Navigate to the home screen.
3. Locate the Customer Review section.
4. Observe the corner radius of each customer review item.

# Expected Result
- The Mobile App applies the configured radius (12) to each customer review item.

# Notes

# Attachments