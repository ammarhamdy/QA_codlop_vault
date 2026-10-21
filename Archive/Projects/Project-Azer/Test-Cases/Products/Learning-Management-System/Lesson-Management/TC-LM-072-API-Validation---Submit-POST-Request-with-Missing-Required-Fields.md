---
tc_id: TC-LM-072
title: API Validation - Submit POST Request with Missing Required Fields
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
| Request Payload | {} (empty JSON) |

# Preconditions
- Admin is logged in and gets a valid authentication token/cookie.

# Steps
1. Send a POST request to `/dashboard/courses/contents/6/lessons` with an empty JSON body or multipart payload.
2. Inspect the HTTP status code and response body.

# Expected Result
- Response has Status 422 Unprocessable Entity with a JSON listing all validation errors (missing title, lesson_type, passing_percentage, etc.).

# Notes

# Attachments
