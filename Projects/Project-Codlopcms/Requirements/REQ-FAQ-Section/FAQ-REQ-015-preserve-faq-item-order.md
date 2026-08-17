---
requirement_id: FAQ-REQ-015
title: Preserve FAQ Item Order
priority: Medium
status: Draft
epic_link: ""
tags:
  - requirement
---

## Description
The App Builder shall preserve the configured order of FAQ items in the `settings.data-object` collection so that the Mobile App renders the FAQ items in the same order.

## Acceptance Criteria
- [ ] The administrator can define the order of FAQ items.
- [ ] The configured order is preserved in `settings.data-object`.
- [ ] The generated JSON maintains the configured FAQ item order.
- [ ] The Mobile App renders FAQ items in the same order as they appear in `settings.data-object`.
- [ ] Adding a new FAQ item does not unexpectedly change the order of existing FAQ items.
- [ ] Removing an FAQ item does not unexpectedly change the order of the remaining FAQ items.