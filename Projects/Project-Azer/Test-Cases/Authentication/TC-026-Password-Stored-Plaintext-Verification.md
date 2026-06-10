---
tc_id: TC-026
title: Verify Password Is Stored as a Bcrypt Hash and Never in Plaintext
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
| phone                 | 500000021                                                 |
| email                 | [test.hash01@example.com](mailto:test.hash01@example.com) |
| policies_accepted     | 1                                                         |
| password              | Admin#123                                                 |
| password_confirmation | Admin#123                                                 |
# Preconditions
- DB read access available (staging environment)
- Account does not already exist
# Steps
- Register with the above payload
- Query the `users` table in the database for the created record
- Inspect the `password` column value
- Verify the value starts with `$2y$` (bcrypt) or equivalent hashing prefix
- Confirm the plaintext `Admin#123` is NOT present anywhere in the record
# Expected Result
- Password column contains a bcrypt hash (e.g., `$2y$10$...`)
- Plaintext password is NOT stored anywhere in the DB
- Password is NOT returned in any API response at registration or login
- No password reset email contains the plaintext password
# Notes
- If password is stored in plaintext or as MD5/SHA1: **Critical** finding. Entire user table is compromised if DB is breached.
- Also check: does the confirmation email echo back the password? That is also a Critical finding.
# Attachments
