---
tc_id: TC-LM-075
title: API Validation - Submit POST Request Missing Passing Percentage
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
| Request Payload | Missing 'passing_percentage' parameter. |

# Preconditions
- Admin makes API request.

# Steps
1. Send the POST payload with `passing_percentage` omitted.
2. Execute the request.

# Expected Result
- Response has Status 422 Unprocessable Entity with error detail: `{"errors": {"passing_percentage": ["The passing percentage field is required."]}}`

# Notes

# Attachments
