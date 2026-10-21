---
tc_id: TC-CUS-REV-022
title: Verify the Mobile App Displays the Configured Rating for a Customer Review
priority: High
status: Draft
type: Regression
linked_requirement: CUS-REV-REQ-010
tags:
  - test-case
  - customer-review
  - rate
  - rendering
  - regression
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| Review Item customer_name | Sarah M. |
| Review Item rate | 5 |
| Review Item review | Excellent product, highly recommended! |

# Preconditions
- A Customer Review section with a review item rated 5 is saved.
- The mobile application has been refreshed with the latest configuration.

# Steps
1. Open the mobile application.
2. Navigate to the home screen.
3. Locate the Customer Review section.
4. Observe the rating displayed with the corresponding customer review.

# Expected Result
- The Mobile App displays the configured rating (5) for the corresponding customer review.

# Notes

# Attachments