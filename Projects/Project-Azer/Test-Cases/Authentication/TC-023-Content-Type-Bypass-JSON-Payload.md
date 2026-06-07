---
tc_id: TC-023
title: Verify API Rejects or Handles JSON Body When Expecting multipart/form-data
priority:
  - High
status:
  - Ready
type:
  - API
linked_requirement:
tags:
  - test-case
  - authentication
---

# Test Data

| Field                 | Value                                                 |
| --------------------- | ----------------------------------------------------- |
| Payload format        | `application/json`                                    |
| name                  | ammar                                                 |
| phone_code            | 966                                                   |
| phone                 | 500000014                                             |
| email                 | [test.ct01@example.com](mailto:test.ct01@example.com) |
| policies_accepted     | 1                                                     |
| password              | Admin#123                                             |
| password_confirmation | Admin#123                                             |
# Preconditions
API is reachable
# Steps
- Send the same registration payload as `application/json` instead of `multipart/form-data`
- Send as `application/x-www-form-urlencoded`
- Capture all response
# Expected Result
- API returns `415 Unsupported Media Type` OR processes both formats consistently
- Under no circumstances should validation be bypassed by switching content type
- If JSON is accepted: all validation rules must apply identically
# Notes
Some backends validate form fields but not JSON fields. A content-type switch can bypass validation entirely.
# Attachments
