---
requirement_id: CUS-REV-REQ-016
title: Remove Customer Review
priority: High
status: Draft
epic_link: ""
tags:
  - requirement
---

## Description
The App Builder shall allow the administrator to remove an existing customer review item from the Customer Review section.

## Acceptance Criteria
- [ ] The administrator can remove an existing customer review.
- [ ] The removed review is deleted from the `settings.data-object` collection.
- [ ] The removed review's `rate`, `customer_name`, and `review` values are no longer included in the generated JSON.
- [ ] Removing a customer review does not modify the remaining review items.
- [ ] The Mobile App no longer displays the removed review after the updated configuration is retrieved.