---
tc_id: TC-014
title: Verify Registration Fails for Already Registered Email
priority:
  - High
status:
  - Ready
type:
  - API
linked_requirement:
tags:
  - test-case
run_result: pass
---

# # Test Data

| Field                 | Value                                                     |
| --------------------- | --------------------------------------------------------- |
| name                  | ammar                                                     |
| phone_code            | 966                                                       |
| phone                 | 500000099                                                 |
| email                 | [ammarhamdy010@gmail.com](mailto:ammarhamdy010@gmail.com) |
| policies_accepted     | 1                                                         |
| password              | Admin#123                                                 |
| password_confirmation | Admin#123                                                 |



# Preconditions
An account already exists with email `ammarhamdy010@gmail.com`
# Steps
- Send `POST /api/auth/register` with an already-registered email but a different phone number
- Capture the HTTP response status and body
# Expected Result
- HTTP `422` or `409 Conflict`
- Error message references email uniqueness constraint
- No duplicate account created
- Existing account is not modified
# Notes
Test the reverse as well: same phone, different email — both uniqueness paths must be validated independently.
# Attachments
