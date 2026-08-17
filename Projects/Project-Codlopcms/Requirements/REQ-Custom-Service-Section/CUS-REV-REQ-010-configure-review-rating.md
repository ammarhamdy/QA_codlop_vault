---
requirement_id: CUS-REV-REQ-011
title: Configure Customer Name
priority: High
status: Draft
epic_link: ""
tags:
  - requirement
---

## Description
The App Builder shall allow the administrator to configure the customer name for each review item using the `customer_name` attribute within `settings.data-object`.

## Acceptance Criteria
- [ ] Each customer review item contains a `customer_name` attribute.
- [ ] The administrator can enter or modify the customer name for a customer review.
- [ ] The configured customer name is stored in the corresponding review item.
- [ ] The generated JSON contains the configured customer name under `settings.data-object`.
- [ ] The Mobile App displays the configured customer name with the corresponding review.