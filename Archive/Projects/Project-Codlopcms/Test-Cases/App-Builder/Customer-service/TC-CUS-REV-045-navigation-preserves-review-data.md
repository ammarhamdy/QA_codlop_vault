---
tc_id: TC-CUS-REV-045
title: Verify Navigation Keeps Rating, Customer Name, and Review Text Associated Correctly
priority: High
status: Draft
type: Regression
linked_requirement: CUS-REV-REQ-019
tags:
  - test-case
  - customer-review
  - slider
  - navigation
  - data-integrity
  - regression
---

# Test Data
| Field | Value |
| ----- | ----- |
| Review Item 1 | Sarah M., rate 5, "Excellent product, highly recommended!" |
| Review Item 2 | John D., rate 4, "Very good quality and fast delivery." |
| Review Item 3 | Priya K., rate 5, "Great customer service and support." |

# Preconditions
- The mobile application is open on the home screen with the Customer Review slider displayed.

# Steps
1. Navigate through the slider to each customer review.
2. For each review, verify the displayed rating, customer name, and review text.
3. Retrieve the original configured review data after navigation.

# Expected Result
- The rating, customer name, and review text remain associated with the correct review during navigation.
- Navigation does not modify the configured customer review data.

# Notes

# Attachments