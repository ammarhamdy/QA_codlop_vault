---
tc_id: TC-LM-083
title: API Validation - Request with Duplicate indexes in answers array
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
| Payload | questions[0][answers][0] defined twice |

# Preconditions
- Admin makes API request.

# Steps
1. Send a request with colliding array keys in the answers nested array.
2. Execute the request.

# Expected Result
- The server parses safely, rejects or overrides cleanly, maintaining structural integrity without breaking database constraints.

# Notes

# Attachments
