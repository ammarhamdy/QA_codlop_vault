---
tc_id: TC-LM-074
title: API Validation - Submit POST Request Missing Quiz Title
priority: High
status: Ready
type: API
linked_requirement: REQ-002
tags:
  - test-case
  - api-validation
  - negative
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Request Payload | Missing 'quiz_title' parameter. |

# Preconditions
- Admin makes API request.

# Steps
1. Send the POST payload with `quiz_title` omitted.
2. Execute the request.

# Expected Result
- Response has Status 422 Unprocessable Entity with error detail: `{"errors": {"quiz_title": ["The quiz title field is required."]}}`

# Notes

# Attachments
