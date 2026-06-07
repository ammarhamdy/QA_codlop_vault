---
tc_id: TC-018
title: Verify Registration Succeeds with Only Required Fields Provided
priority:
  - Medium
status:
  - Ready
type:
  - API
linked_requirement:
tags:
  - test-case
  - authentication
run_result: pass
---

# Test Data

| Field                 | Value                                                     |
| --------------------- | --------------------------------------------------------- |
| name                  | ammar                                                     |
| phone_code            | 966                                                       |
| phone                 | 500000004                                                 |
| email                 | [test.edge06@example.com](mailto:test.edge06@example.com) |
| policies_accepted     | 1                                                         |
| password              | Admin#123                                                 |
| password_confirmation | Admin#123                                                 |
| google_id             | (omitted entirely)                                        |
# Preconditions
- API is reachable
- No existing account with this email or phone
# Steps
- Send registration payload with `google_id` omitted
- Capture response
# Expected Result
- HTTP `201 Created`
- Account created successfully without `google_id`
- Response contains expected user data or token
# Notes
Confirms `google_id` is genuinely optional and not silently required by backend logic.
# Attachments
