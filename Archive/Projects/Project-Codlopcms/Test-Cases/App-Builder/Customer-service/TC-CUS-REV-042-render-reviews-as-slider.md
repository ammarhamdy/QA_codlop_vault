---
tc_id: TC-CUS-REV-042
title: Verify Customer Reviews Are Rendered as a Slider
priority: High
status: Draft
type: Regression
linked_requirement: CUS-REV-REQ-018
tags:
  - test-case
  - customer-review
  - slider
  - layout
  - rendering
  - regression
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| layout | slider-reviews |
| Review Item 1 | Sarah M., rate 5, "Excellent product, highly recommended!" |
| Review Item 2 | John D., rate 4, "Very good quality and fast delivery." |
| Review Item 3 | Priya K., rate 5, "Great customer service and support." |

# Preconditions
- A Customer Review section with `layout: "slider-reviews"` and the three review items above is saved.
- The mobile application has been refreshed with the latest configuration.

# Steps
1. Open the mobile application.
2. Navigate to the home screen.
3. Locate the Customer Review section.
4. Observe how the section and its review items are presented.

# Expected Result
- The Mobile App renders the Customer Review section using the `slider-reviews` layout.
- Each configured customer review is rendered as an individual review item within the slider.
- The customer name, review text, and review rating are displayed with each review.
- Customer reviews are rendered in the order defined by `settings.data-object`.
- The slider renders the configured customer reviews without altering their content.

# Notes

# Attachments