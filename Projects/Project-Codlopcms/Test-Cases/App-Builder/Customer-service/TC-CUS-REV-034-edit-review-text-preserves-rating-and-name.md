---
tc_id: TC-CUS-REV-034
title: Verify Editing the Review Text Does Not Modify the Rating or Customer Name
priority: High
status: Draft
type: Functional
linked_requirement: CUS-REV-REQ-015
tags:
  - test-case
  - customer-review
  - review
  - edit
  - data-integrity
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| Review Item review (after) | Outstanding quality and superb support! |
| Review Item rate | 5 |
| Review Item customer_name | Sarah Miller |

# Preconditions
- Administrator is logged into the App Builder.
- A Customer Review section with a review item (rating 5, name "Sarah Miller", review "Excellent product, highly recommended!") is open for editing.

# Steps
1. Note the rating and customer name of the review item.
2. Edit the review text of the review item.
3. Save the section.
4. Retrieve the generated JSON configuration.
5. Inspect the review item under `settings.data-object`.

# Expected Result
- Updating the review text does not modify the review rating or customer name.
- The generated JSON reflects the updated `review` value while `rate` and `customer_name` remain unchanged.

# Notes

# Attachments