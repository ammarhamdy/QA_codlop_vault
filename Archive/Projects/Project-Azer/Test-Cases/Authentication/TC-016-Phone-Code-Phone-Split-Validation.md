---
tc_id: TC-016
title: Verify Phone Code and Phone Number Are Validated as a Composite Unit
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
run_result: fail
---

# Test Data

| Field                 | Value                                                     |
| --------------------- | --------------------------------------------------------- |
| name                  | ammar                                                     |
| phone_code            | (empty string)                                            |
| phone                 | 500000002                                                 |
| email                 | [test.edge04@example.com](mailto:test.edge04@example.com) |
| policies_accepted     | 1                                                         |
| password              | Admin#123                                                 |
| password_confirmation | Admin#123                                                 |
# Preconditions
API is reachable
# Steps
- Send registration with `phone_code` as empty string, valid `phone`
- Repeat with `phone_code` = `0`, then `phone_code` = `99999` (non-existent country code)
- Repeat with `phone` = empty string, valid `phone_code`
- Capture all responses
# Expected Result
- All three variants return `422` with a specific validation error on the invalid field
- No account created in any variant
# Notes
Missing phone_code with a valid phone should never silently default to any country code.
# Attachments
