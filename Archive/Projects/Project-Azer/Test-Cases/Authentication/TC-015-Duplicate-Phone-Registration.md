---
tc_id: TC-015
title: Verify Registration Fails for Already Registered Phone Number
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
run_result: pass
---

# Test Data

| Field                 | Value                                                             |
| --------------------- | ----------------------------------------------------------------- |
| name                  | different user                                                    |
| phone_code            | 966                                                               |
| phone                 | 500000002                                                         |
| email                 | [newunique.email@example.com](mailto:newunique.email@example.com) |
| policies_accepted     | 1                                                                 |
| password              | Admin#123                                                         |
| password_confirmation | Admin#123                                                         |
# Preconditions
An account already exists with phone `966500000002`
# Steps
- Send `POST /api/auth/register` with an already-registered phone but a new unique email
- Capture the HTTP response status and body
# Expected Result
# pected Result

- HTTP `422` or `409 Conflict`
- Error references phone uniqueness
- No new account created
# Notes
Also test: phone_code `966` + phone `500000002` vs phone_code `1` + phone `966500000002` — confirm the system treats composite phone (code+number) as the unique key, not phone alone.
# Attachments
