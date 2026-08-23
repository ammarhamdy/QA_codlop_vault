---
tc_id: TC-CUS-REV-031
title: Verify Editing the Customer Name Does Not Modify the Rating or Review Text
priority: High
status: Draft
type: Functional
linked_requirement: CUS-REV-REQ-014
tags:
  - test-case
  - customer-review
  - customer_name
  - edit
  - data-integrity
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| Review Item customer_name (after) | Sarah Miller |
| Review Item rate | 5 |
| Review Item review | Excellent product, highly recommended! |

# Preconditions
- Administrator is logged into the App Builder.
- A Customer Review section with a review item (name "Sarah M.", rating 5, review "Excellent product, highly recommended!") is open for editing.

# Steps
1. Note the rating and review text of the review item.
2. Edit the customer name of the review item from "Sarah M." to "Sarah Miller".
3. Save the section.
4. Retrieve the generated JSON configuration.
5. Inspect the review item under `settings.data-object`.

# Expected Result
- Updating the customer name does not modify the review rating or review text.
- The generated JSON reflects the updated `customer_name` value while `rate` and `review` remain unchanged.

# Notes

# Attachments