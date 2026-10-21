---
requirement_id: FAQ-REQ-011
title: Configure FAQ Question
priority: High
status: Draft
epic_link: ""
tags:
  - requirement
---

## Description
The App Builder shall allow the administrator to configure the question for each FAQ item using the `question` attribute within `settings.data-object`.

## Acceptance Criteria
- [ ] Each FAQ item contains a `question` attribute.
- [ ] The administrator can enter a question for an FAQ item.
- [ ] The configured question is stored within the corresponding FAQ item.
- [ ] The generated JSON contains the configured question under `settings.data-object`.
- [ ] The Mobile App displays the configured question as the FAQ item's question.