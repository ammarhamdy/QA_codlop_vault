---
tc_id: TC-CUS-REV-036
title: Remove an Existing Customer Review Item
priority: High
status: Draft
type: Functional
linked_requirement: CUS-REV-REQ-016
tags:
  - test-case
  - customer-review
  - remove
  - data-object
  - negative
---

# Test Data
| Field | Value |
| ----- | ----- |
| Review Item to remove | Sarah M. (rate 5, review "Excellent product, highly recommended!") |
| Remaining Review Item | John D. (rate 4, review "Very good quality and fast delivery.") |

# Preconditions
- Administrator is logged into the App Builder.
- A Customer Review section with two review items (as listed above) is open for editing.

# Steps
1. Locate the customer review item for "Sarah M.".
2. Remove the customer review item.
3. Save the section.
4. Retrieve the generated JSON configuration.
5. Inspect the `settings.data-object` array.

# Expected Result
- The administrator can remove an existing customer review.
- The removed review is deleted from the `settings.data-object` collection.
- The removed review's `rate`, `customer_name`, and `review` values are no longer included in the generated JSON.

# Notes

# Attachments