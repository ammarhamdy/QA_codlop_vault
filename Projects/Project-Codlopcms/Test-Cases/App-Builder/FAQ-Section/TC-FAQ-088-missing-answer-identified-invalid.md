---
tc_id: TC-FAQ-088
title: Identify an FAQ Item with a Missing Answer as Invalid
priority: High
status:
  - completed
type: API
linked_requirement: FAQ-REQ-038
tags:
  - test-case
  - faq
  - validation
  - answer
  - api
  - negative
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| FAQ Item question | How do I reset my password? |
| FAQ Item answer | (missing) |

# Preconditions
- An FAQ configuration containing a FAQ item with a missing `answer` attribute is available.

# Steps
1. Submit the FAQ configuration to the validation process.
2. Verify the validation result for the FAQ item.

# Expected Result
- An FAQ item with a missing `answer` is identified as invalid.

# Notes

# Attachments