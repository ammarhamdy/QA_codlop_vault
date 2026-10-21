---
tc_id: TC-CUS-REV-028
title: Verify Editing the Rating Does Not Modify the Customer Name or Review Text
priority: High
status: Draft
type: Functional
linked_requirement: CUS-REV-REQ-013
tags:
  - test-case
  - customer-review
  - rate
  - edit
  - data-integrity
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| Review Item rate (after) | 4 |
| Review Item customer_name | Sarah Miller |
| Review Item review | Excellent product, highly recommended! |

# Preconditions
- Administrator is logged into the App Builder.
- A Customer Review section with a review item (name "Sarah Miller", review "Excellent product, highly recommended!", rating 5) is open for editing.

# Steps
1. Note the customer name and review text of the review item.
2. Edit the rating of the review item from 5 to 4.
3. Save the section.
4. Retrieve the generated JSON configuration.
5. Inspect the review item under `settings.data-object`.

# Expected Result
- Updating the rating does not modify the customer name or review text.
- The generated JSON reflects the updated `rate` value while `customer_name` and `review` remain unchanged.

# Notes

# Attachments