---
tc_id: TC-CUS-REV-041
title: Verify Adding or Removing a Review Does Not Reorder the Existing Reviews
priority: Medium
status: Draft
type: Functional
linked_requirement: CUS-REV-REQ-017
tags:
  - test-case
  - customer-review
  - order
  - data-integrity
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| Review Item 1 | Sarah M. (rate 5) |
| Review Item 2 | John D. (rate 4) |
| Review Item 3 (added) | Priya K. (rate 5) |

# Preconditions
- Administrator is logged into the App Builder.
- A Customer Review section has review items ordered as "Sarah M., John D." and is open for editing.

# Steps
1. Note the current order of the existing review items.
2. Add a new review item "Priya K." at the end.
3. Save the section and retrieve the JSON configuration.
4. Note the order of the remaining items.
5. Remove the "Sarah M." review item.
6. Save the section and retrieve the JSON configuration again.
7. Compare the order of the remaining review items.

# Expected Result
- Adding a new customer review does not unexpectedly change the order of existing reviews.
- Removing a customer review does not unexpectedly change the order of the remaining reviews.
- The generated JSON maintains the configured customer review order in `settings.data-object`.

# Notes

# Attachments