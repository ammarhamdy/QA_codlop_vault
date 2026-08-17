---
tc_id: TC-FAQ-018
title: Verify FAQ Items Appear in JSON Under settings.data-object
priority: High
status: Draft
type: API
linked_requirement: FAQ-REQ-010
tags:
  - test-case
  - faq
  - items
  - json
  - api
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| FAQ Item 1 | Q: Question A / A: Answer A |
| FAQ Item 2 | Q: Question B / A: Answer B |

# Preconditions
- Administrator is logged into the App Builder.
- An FAQ section containing at least two FAQ items has been configured and saved.

# Steps
1. Retrieve the generated FAQ JSON configuration.
2. Inspect the `settings.data-object` collection.
3. Verify the configured FAQ items are present.

# Expected Result
- The configured FAQ items are included in the generated JSON under `settings.data-object`.
- Each item in `settings.data-object` contains the configured question and answer.

# Notes

# Attachments