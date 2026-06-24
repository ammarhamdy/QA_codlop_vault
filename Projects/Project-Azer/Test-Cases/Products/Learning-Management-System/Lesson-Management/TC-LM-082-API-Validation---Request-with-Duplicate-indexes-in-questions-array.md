---
tc_id: TC-LM-082
title: API Validation - Request with Duplicate indexes in questions array
priority: Medium
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
| Payload | questions[0][id]=X, questions[0][id]=Y (clashing index) |

# Preconditions
- Admin makes API request.

# Steps
1. Construct a PHP-style multipart request with duplicate field keys e.g., `questions[0][question]` declared twice with different values.
2. Execute the request.

# Expected Result
- The server-side parser resolves the array keys, either merging them or rejecting the duplicate index with Status 400 or 422 to prevent ambiguous data state.

# Notes

# Attachments
