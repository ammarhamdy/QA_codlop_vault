---
tc_id: TC-LM-077
title: API Validation - Submit POST Request Missing Choice Answer Text
priority: High
status: Ready
type: API
linked_requirement: REQ-002
tags:
  - test-case
  - api-validation
  - negative
---

# Test Data
| Field | Value |
| ----- | ----- |
| Request Payload | Missing 'questions[0][answers][0][answer]' parameter. |

# Preconditions
- Admin makes API request.

# Steps
1. Send the POST payload with `questions[0][answers][0][answer]` omitted.
2. Execute the request.

# Expected Result
- Response has Status 422 Unprocessable Entity with error detail: `{"errors": {"questions.0.answers.0.answer": ["The answer field is required."]}}`

# Notes

# Attachments
