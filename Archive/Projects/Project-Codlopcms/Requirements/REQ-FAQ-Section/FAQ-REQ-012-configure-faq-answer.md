---
requirement_id: FAQ-REQ-012
title: Configure FAQ Answer
priority: High
status: Draft
epic_link: ""
tags:
  - requirement
---

## Description
The App Builder shall allow the administrator to configure the answer for each FAQ item using the `answer` attribute within `settings.data-object`.

## Acceptance Criteria
- [ ] Each FAQ item contains an `answer` attribute.
- [ ] The administrator can enter an answer for an FAQ item.
- [ ] The configured answer is stored within the corresponding FAQ item.
- [ ] The generated JSON contains the configured answer under `settings.data-object`.
- [ ] The Mobile App displays the configured answer when the corresponding FAQ item is expanded.