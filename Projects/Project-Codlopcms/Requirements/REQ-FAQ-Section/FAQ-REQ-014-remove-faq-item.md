---
requirement_id: FAQ-REQ-014
title: Remove FAQ Item
priority: High
status: Draft
epic_link: ""
tags:
  - requirement
---

## Description
The App Builder shall allow the administrator to remove an existing FAQ item from the FAQ section.

## Acceptance Criteria
- [ ] The administrator can remove an existing FAQ item.
- [ ] The removed FAQ item is deleted from the `settings.data-object` collection.
- [ ] The removed FAQ item's question and answer are no longer included in the generated JSON.
- [ ] Removing an FAQ item does not modify the remaining FAQ items.
- [ ] The Mobile App no longer displays the removed FAQ item after the updated configuration is retrieved.