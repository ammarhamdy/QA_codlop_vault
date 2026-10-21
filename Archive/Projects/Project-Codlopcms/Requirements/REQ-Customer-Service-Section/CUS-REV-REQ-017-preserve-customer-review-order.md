---
requirement_id: CUS-REV-REQ-017
title: Preserve Customer Review Order
priority: Medium
status: Draft
epic_link: ""
tags:
  - requirement
---

## Description
The App Builder shall preserve the configured order of customer review items in the `settings.data-object` collection so that the Mobile App renders the reviews in the same order.

## Acceptance Criteria
- [ ] The administrator can define the order of customer review items.
- [ ] The configured order is preserved in `settings.data-object`.
- [ ] The generated JSON maintains the configured customer review order.
- [ ] The Mobile App renders customer reviews in the same order as they appear in `settings.data-object`.
- [ ] Adding a new customer review does not unexpectedly change the order of existing reviews.
- [ ] Removing a customer review does not unexpectedly change the order of the remaining reviews.