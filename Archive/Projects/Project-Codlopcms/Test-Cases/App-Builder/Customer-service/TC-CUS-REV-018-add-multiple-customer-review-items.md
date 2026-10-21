---
tc_id: TC-CUS-REV-018
title: Add Multiple Customer Review Items to the Customer Review Section
priority: High
status: Draft
type: Functional
linked_requirement: CUS-REV-REQ-009
tags:
  - test-case
  - customer-review
  - items
  - data-object
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| Review Item 1 rate | 5 |
| Review Item 1 customer_name | Sarah M. |
| Review Item 1 review | Excellent product, highly recommended! |
| Review Item 2 rate | 4 |
| Review Item 2 customer_name | John D. |
| Review Item 2 review | Very good quality and fast delivery. |
| Review Item 3 rate | 5 |
| Review Item 3 customer_name | Priya K. |
| Review Item 3 review | Great customer service and support. |

# Preconditions
- Administrator is logged into the App Builder.
- A Customer Review section has been created and is open for editing.

# Steps
1. Add a new customer review item with rate 5, customer name "Sarah M.", and review text "Excellent product, highly recommended!".
2. Add a second customer review item with rate 4, customer name "John D.", and review text "Very good quality and fast delivery.".
3. Add a third customer review item with rate 5, customer name "Priya K.", and review text "Great customer service and support.".
4. Save the section.
5. Retrieve the generated JSON configuration.

# Expected Result
- Multiple customer review items are configured within the same Customer Review section.
- Each review item contains a rating, customer name, and review text.
- The review items are included in the generated JSON under `settings.data-object`.

# Notes

# Attachments