---
requirement_id: CUS-REV-REQ-014
title: Edit Customer Name
priority: High
status: Draft
epic_link: ""
tags:
  - requirement
---

## Description
The App Builder shall allow the administrator to edit the `customer_name` value of an existing customer review item.

## Acceptance Criteria
- [ ] The administrator can edit the customer name of an existing customer review.
- [ ] The updated customer name is stored in the corresponding review item.
- [ ] Updating the customer name does not modify the review rating or review text.
- [ ] The generated JSON reflects the updated `customer_name` value under `settings.data-object`.
- [ ] The Mobile App displays the updated customer name after the updated configuration is retrieved.