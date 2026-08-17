---
requirement_id: CUS-REV-REQ-003
title: Assign Fixed Section Type
priority: High
status: Draft
epic_link: ""
tags:
  - requirement
---

## Description
The App Builder shall assign the fixed value `customer_review` to the `type` attribute of every Customer Review section. The `type` value identifies the section as a Customer Review component and determines how the Mobile App interprets and renders the section.

## Acceptance Criteria
- [ ] Every Customer Review section contains a `type` attribute.
- [ ] The `type` value for a Customer Review section is always `customer_review`.
- [ ] The administrator cannot change the `type` value to another section type.
- [ ] The generated JSON contains `"type": "customer_review"` for every Customer Review section.
- [ ] The Mobile App uses the `type` value to identify the section as a Customer Review component.