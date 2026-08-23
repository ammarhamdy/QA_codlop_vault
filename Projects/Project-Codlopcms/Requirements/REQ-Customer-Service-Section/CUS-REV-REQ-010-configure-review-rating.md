---
requirement_id: CUS-REV-REQ-010
title: Configure Review Rating
priority: High
status: Draft
epic_link: ""
tags:
  - requirement
---

## Description
The App Builder shall allow the administrator to configure the customer rating for each review item using the `rate` attribute within `settings.data-object`.

## Acceptance Criteria
- [ ] Each customer review item contains a `rate` attribute.
- [ ] The administrator can configure the rating for a customer review.
- [ ] The configured rating is stored in the corresponding review item.
- [ ] The generated JSON contains the configured rating under `settings.data-object`.
- [ ] The Mobile App displays the configured rating for the corresponding customer review.