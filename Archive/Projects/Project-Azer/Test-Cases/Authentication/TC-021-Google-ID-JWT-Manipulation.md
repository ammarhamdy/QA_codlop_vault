---
tc_id: TC-021
title: Verify Forged or Malformed google_id JWT Is Rejected
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

| Field                 | Value                                                   |
| --------------------- | ------------------------------------------------------- |
| name                  | ammar                                                   |
| phone_code            | 966                                                     |
| phone                 | 500000012                                               |
| email                 | [test.jwt01@example.com](mailto:test.jwt01@example.com) |
| policies_accepted     | 1                                                       |
| password              | Admin#123                                               |
| password_confirmation | Admin#123                                               |
| google_id             | `eyJhbGciOiJub25lIn0.eyJzdWIiOiIxMjM0NTYifQ.`           |
# Preconditions
- API is reachable
- Test JWT is crafted with `alg: none` (unsigned token — classic JWT attack)
# Steps
- Send registration with a JWT using `alg: none` as `google_id`
- Repeat with a JWT signed with a different secret key
- Repeat with a JWT where `sub` (subject) is a known admin user's Google ID
- Capture all responses
# Expected Result
- All variants return `401` or `422`
- No account created or linked
- Server validates JWT signature against Google's public keys — not just decodes it
# Notes
- `alg: none` bypass is a well-known CVE class. If the API accepts it and creates an account, this is a **Critical** authentication bypass.
- If `google_id` can be used to link to an existing account without verifying token ownership, account takeover is possible.
# Attachments
