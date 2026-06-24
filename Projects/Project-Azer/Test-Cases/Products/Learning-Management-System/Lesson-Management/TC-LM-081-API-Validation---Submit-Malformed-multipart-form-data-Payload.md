---
tc_id: TC-LM-081
title: API Validation - Submit Malformed multipart/form-data Payload
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
| Payload | Corrupted or cut-off multipart boundary |

# Preconditions
- Admin makes API request.

# Steps
1. Initiate a multipart POST request with a broken or cut-off boundary declaration in HTTP headers.
2. Execute the request.

# Expected Result
- Response has Status 400 Bad Request, indicating a malformed multipart request.

# Notes

# Attachments
