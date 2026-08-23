---
tc_id: TC-CUS-REV-023
title: Configure the Customer Name for a Review Item
priority: High
status: Draft
type: Functional
linked_requirement: CUS-REV-REQ-011
tags:
  - test-case
  - customer-review
  - customer_name
  - configuration
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| Review Item customer_name | Sarah M. |

# Preconditions
- Administrator is logged into the App Builder.
- A Customer Review section is open for editing.

# Steps
1. Add a new customer review item.
2. Enter the customer name "Sarah M.".
3. Modify the customer name to "Sarah Miller".
4. Save the section.
5. Retrieve the generated JSON configuration.

# Expected Result
- Each customer review item contains a `customer_name` attribute.
- The administrator can enter and modify the customer name for a customer review.
- The configured customer name is stored in the corresponding review item.
- The generated JSON contains the configured customer name under `settings.data-object`.

# Notes

# Attachments