---
tc_id: TC-LM-080
title: API Validation - Submit POST Request with Empty Questions/Answers Arrays
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
| Request Payload | questions[] array is empty, or questions[0][answers] is empty |

# Preconditions
- Admin makes API request.

# Steps
1. Construct POST payload where `questions` is an empty array `[]`.
2. Execute the request.

# Expected Result
- Response has Status 422 Unprocessable Entity with error message detailing that at least 1 question and 2 answers are required.

# Notes

# Attachments
