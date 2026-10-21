---
tc_id: TC-LM-084
title: API Validation - Unauthenticated Lesson Creation Attempt
priority: High
status: Ready
type: API
linked_requirement: REQ-002
tags:
  - test-case
  - api-validation
  - security
---

# Test Data
| Field | Value |
| ----- | ----- |
| Headers | No Cookie, No X-CSRF-Token, No auth tokens |

# Preconditions
- No user session exists.

# Steps
1. Send a POST request with a valid payload to `/dashboard/courses/contents/6/lessons` without sending any cookies or authentication headers.
2. Inspect the HTTP status code.

# Expected Result
- Response has Status 401 Unauthorized or redirects to the login page.

# Notes

# Attachments
