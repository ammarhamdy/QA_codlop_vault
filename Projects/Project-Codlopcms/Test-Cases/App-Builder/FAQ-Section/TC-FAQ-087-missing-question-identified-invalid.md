---
tc_id: TC-FAQ-087
title: Identify an FAQ Item with a Missing Question as Invalid
priority: High
status: Draft
type: API
linked_requirement: FAQ-REQ-038
tags:
  - test-case
  - faq
  - validation
  - question
  - api
  - negative
---

# Test Data
| Field | Value |
| ----- | ----- |
| FAQ Item question | (missing) |
| FAQ Item answer | Go to Settings > Security. |

# Preconditions
- An FAQ configuration containing a FAQ item with a missing `question` attribute is available.

# Steps
1. Submit the FAQ configuration to the validation process.
2. Verify the validation result for the FAQ item.

# Expected Result
- An FAQ item with a missing `question` is identified as invalid.

# Notes

# Attachments