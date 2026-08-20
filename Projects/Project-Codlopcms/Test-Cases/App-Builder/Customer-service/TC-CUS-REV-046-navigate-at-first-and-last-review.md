---
tc_id: TC-CUS-REV-046
title: Verify Slider Navigation Behavior at the First and Last Customer Review
priority: High
status: Draft
type: Functional
linked_requirement: CUS-REV-REQ-019
tags:
  - test-case
  - customer-review
  - slider
  - navigation
  - boundary
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
1. Navigate backward from the first customer review (Sarah M.).
2. Observe the slider behavior.
3. Navigate forward until the last customer review (Priya K.) is reached.
4. Navigate forward again from the last customer review.
5. Observe the slider behavior.

# Expected Result
- The slider handles navigation correctly when the first review is reached; the first review remains correctly displayed.
- The slider handles navigation correctly when the last review is reached; the last review remains correctly displayed.
- Navigation at the boundaries does not cause the slider to display incorrect or blank content.

# Notes

# Attachments