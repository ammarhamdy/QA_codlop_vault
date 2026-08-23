---
tc_id: TC-FAQ-086
title: Verify a Valid FAQ Item with Question and Answer Passes Validation
priority: High
status:
  - completed
type: API
linked_requirement: FAQ-REQ-038
tags:
  - test-case
  - faq
  - validation
  - data-object
  - api
  - positive
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| FAQ Item question | How do I reset my password? |
| FAQ Item answer | Go to Settings > Security. |

# Preconditions
- An FAQ configuration containing a FAQ item with the question and answer above is available.

# Steps
1. Submit the FAQ configuration to the validation process.
2. Verify the validation result for the FAQ item.

# Expected Result
- The FAQ item contains a `question` attribute with valid FAQ question content.
- The FAQ item contains an `answer` attribute with valid FAQ answer content.
- The valid FAQ item passes validation.

# Notes

# Attachments