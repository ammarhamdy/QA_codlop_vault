---
tc_id: TC-CUS-REV-037
title: Verify Removing a Review Item Does Not Modify the Remaining Review Items
priority: High
status: Draft
type: Functional
linked_requirement: CUS-REV-REQ-016
tags:
  - test-case
  - customer-review
  - remove
  - data-integrity
  - positive
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
1. Note the values of the remaining review item "John D.".
2. Remove the review item "Sarah M.".
3. Save the section.
4. Retrieve the generated JSON configuration.
5. Inspect the remaining review item under `settings.data-object`.

# Expected Result
- Removing a customer review does not modify the remaining review items.
- The remaining review item "John D." keeps its `rate`, `customer_name`, and `review` values unchanged.

# Notes

# Attachments