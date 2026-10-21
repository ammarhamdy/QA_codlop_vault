---
tc_id: TC-CUS-REV-030
title: Edit the Customer Name of an Existing Review Item
priority: High
status: Draft
type: Functional
linked_requirement: CUS-REV-REQ-014
tags:
  - test-case
  - customer-review
  - customer_name
  - edit
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| Review Item customer_name (before) | Sarah M. |
| Review Item customer_name (after) | Sarah Miller |

# Preconditions
- Administrator is logged into the App Builder.
- A Customer Review section with a review item named "Sarah M." is open for editing.

# Steps
1. Locate the existing customer review item.
2. Edit the customer name from "Sarah M." to "Sarah Miller".
3. Save the section.
4. Retrieve the generated JSON configuration.
5. Inspect the `customer_name` attribute of the review item under `settings.data-object`.

# Expected Result
- The administrator can edit the customer name of an existing customer review.
- The updated customer name is stored in the corresponding review item.
- The generated JSON reflects the updated `customer_name` value ("Sarah Miller") under `settings.data-object`.

# Notes

# Attachments