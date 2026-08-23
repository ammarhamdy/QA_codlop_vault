---
tc_id: TC-CUS-REV-026
title: Verify the Mobile App Displays the Configured Review Text
priority: High
status: Draft
type: Regression
linked_requirement: CUS-REV-REQ-012
tags:
  - test-case
  - customer-review
  - review
  - rendering
  - regression
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| Review Item customer_name | Sarah Miller |
| Review Item rate | 5 |
| Review Item review | Excellent product, highly recommended! |

# Preconditions
- A Customer Review section with a review item containing the review text above is saved.
- The mobile application has been refreshed with the latest configuration.

# Steps
1. Open the mobile application.
2. Navigate to the home screen.
3. Locate the Customer Review section.
4. Observe the review text displayed with the corresponding customer review.

# Expected Result
- The Mobile App displays the configured review text "Excellent product, highly recommended!" with the corresponding customer review.

# Notes

# Attachments