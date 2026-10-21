---
tc_id: TC-017
title: Verify Registration Fails When policies_accepted Is Not Accepted
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

| Field                 | Value                                                     |
| --------------------- | --------------------------------------------------------- |
| name                  | ammar                                                     |
| phone_code            | 966                                                       |
| phone                 | 500000003                                                 |
| email                 | [test.edge05@example.com](mailto:test.edge05@example.com) |
| policies_accepted     | 0                                                         |
| password              | Admin#123                                                 |
| password_confirmation | Admin#123                                                 |
# Preconditions
API is reachable
# Steps
- Send registration with `policies_accepted = 0`
- Repeat with `policies_accepted` field entirely omitted from the payload
- Capture responses
# Expected Result
- Both variants return `422` with an error indicating policies must be accepted
- No account created
# Notes
Omitting the field entirely must behave identically to sending `0` — do not allow absent = accepted.
# Attachments
