---
tc_id: TC-LM-078
title: API Validation - Submit POST Request with Invalid Content-Type
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
| Content-Type Header | text/plain or application/xml |

# Preconditions
- Admin makes API request.

# Steps
1. Prepare a valid JSON or multipart payload.
2. Send POST request with header `Content-Type: text/plain`.
3. Execute the request.

# Expected Result
- Response has Status 415 Unsupported Media Type or 400 Bad Request indicating invalid content format.

# Notes

# Attachments
