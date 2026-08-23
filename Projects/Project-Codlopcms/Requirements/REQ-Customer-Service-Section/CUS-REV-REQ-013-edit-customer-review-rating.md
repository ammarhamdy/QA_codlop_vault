---
requirement_id: CUS-REV-REQ-013
title: Edit Customer Review Rating
priority: High
status: Draft
epic_link: ""
tags:
  - requirement
---

## Description
The App Builder shall allow the administrator to edit the `rate` value of an existing customer review item.

## Acceptance Criteria
- [ ] The administrator can edit the rating of an existing customer review.
- [ ] The updated rating is stored in the corresponding review item.
- [ ] Updating the rating does not modify the customer name or review text.
- [ ] The generated JSON reflects the updated `rate` value under `settings.data-object`.
- [ ] The Mobile App displays the updated rating after the updated configuration is retrieved.