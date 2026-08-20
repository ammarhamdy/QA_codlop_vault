---
tc_id: TC-CUS-REV-024
title: Verify the Mobile App Displays the Configured Customer Name with the Review
priority: High
status: Draft
type: Regression
linked_requirement: CUS-REV-REQ-011
tags:
  - test-case
  - customer-review
  - customer_name
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
- A Customer Review section with a review item named "Sarah Miller" is saved.
- The mobile application has been refreshed with the latest configuration.

# Steps
1. Open the mobile application.
2. Navigate to the home screen.
3. Locate the Customer Review section.
4. Observe the customer name displayed with the corresponding review.

# Expected Result
- The Mobile App displays the configured customer name "Sarah Miller" with the corresponding review.

# Notes

# Attachments