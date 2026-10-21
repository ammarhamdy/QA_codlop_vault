---
tc_id: TC-CUS-REV-121
title: Verify Rating, Customer Name, and Review Text Changes Are Reflected After Refresh
priority: High
status: Draft
type: Regression
linked_requirement: CUS-REV-REQ-043
tags:
  - test-case
  - customer-review
  - refresh
  - review-data
  - regression
---

# Test Data
| Field | Value |
| ----- | ----- |
| Review Item rate (after) | 4 |
| Review Item customer_name (after) | Sarah Miller |
| Review Item review (after) | Outstanding quality and superb support! |

# Preconditions
- A Customer Review section is rendered in the Mobile App.
- The rating, customer name, and review text of a review item have been updated in the App Builder and saved.

# Steps
1. Note the review item's rating, customer name, and review text currently displayed in the Mobile App.
2. Refresh the mobile application configuration.
3. Note the review item's rating, customer name, and review text displayed after refresh.

# Expected Result
- Changes to customer review ratings are reflected after refresh.
- Changes to customer names are reflected after refresh.
- Changes to review texts are reflected after refresh.
- The Mobile App displays the updated rating, customer name, and review text.

# Notes

# Attachments