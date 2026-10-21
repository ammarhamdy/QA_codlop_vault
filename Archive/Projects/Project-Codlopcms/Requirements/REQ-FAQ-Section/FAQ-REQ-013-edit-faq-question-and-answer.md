---
requirement_id: FAQ-REQ-013
title: Edit FAQ Question and Answer
priority: High
status: Draft
epic_link: ""
tags:
  - requirement
---

## Description
The App Builder shall allow the administrator to edit the `question` and `answer` values of an existing FAQ item.

## Acceptance Criteria
- [ ] The administrator can edit the question of an existing FAQ item.
- [ ] The administrator can edit the answer of an existing FAQ item.
- [ ] Updating the question does not modify the corresponding answer.
- [ ] Updating the answer does not modify the corresponding question.
- [ ] The updated question and answer are stored in the corresponding FAQ item.
- [ ] The generated JSON reflects the updated question and answer under `settings.data-object`.
- [ ] The Mobile App displays the updated question and answer after the updated configuration is retrieved.