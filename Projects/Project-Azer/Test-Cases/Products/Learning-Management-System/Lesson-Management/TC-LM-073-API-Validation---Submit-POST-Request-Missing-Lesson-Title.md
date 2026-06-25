---
tc_id: TC-LM-073
title: API Validation - Submit POST Request Missing Lesson Title
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
| Request Payload | Missing 'title' parameter. 'lesson_type'='file', 'passing_percentage'='70', etc. |

# Preconditions
- Admin makes API request.

# Steps
1. Send the POST payload with the `title` field completely omitted.
2. Execute and inspect.

# Expected Result
- Response has Status 422 Unprocessable Entity with error detail: `{"errors": {"title": ["The title field is required."]}}`

# Notes

# Attachments
