---
tc_id: TC-LM-085
title: API Validation - Unauthorized Lesson Creation Attempt (Student Role)
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
| Headers | Valid cookie of a Student user session |

# Preconditions
- Student is logged in and possesses valid cookies.

# Steps
1. Send a POST request to `/dashboard/courses/contents/6/lessons` with a valid payload, but attach the session cookie of a Student.
2. Inspect the HTTP status code.

# Expected Result
- Response has Status 403 Forbidden, preventing unauthorized write operations.

# Notes

# Attachments
