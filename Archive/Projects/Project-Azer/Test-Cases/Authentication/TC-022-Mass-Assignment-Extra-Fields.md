---
tc_id: TC-022
title: Verify Extra Fields in Registration Payload Are Ignored (Mass Assignment Protection)
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

| Field                 | Value                                                     |
| --------------------- | --------------------------------------------------------- |
| name                  | ammar                                                     |
| phone_code            | 966                                                       |
| phone                 | 500000013                                                 |
| email                 | [test.mass01@example.com](mailto:test.mass01@example.com) |
| policies_accepted     | 1                                                         |
| password              | Admin#123                                                 |
| password_confirmation | Admin#123                                                 |
| role                  | admin                                                     |
| is_admin              | true                                                      |
| is_verified           | true                                                      |
| email_verified_at     | 2020-01-01                                                |
# Preconditions
API is reachable
# Steps
- Send registration payload with injected fields: `role=admin`, `is_admin=true`, `is_verified=true`, `email_verified_at=2020-01-01`
- If registration succeeds, inspect the created user record (via admin panel or DB)
- Attempt to log in and verify if elevated privileges were assigned
# Expected Result
- HTTP `201` — extra fields silently ignored
- Created user has default role (not admin)
- `is_verified` is `false`, `email_verified_at` is `null`
- No privilege escalation occurred
# Notes
If the created account has `role: admin` or bypasses email verification, this is a **Critical** mass assignment vulnerability. Common in Laravel/Eloquent without `$fillable` protection.
# Attachments
