---
tc_id: TC-019
title: Verify SQL Injection Payload in Name Field Is Rejected or Sanitized
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
| name                  | `' OR '1'='1`                                             |
| phone_code            | 966                                                       |
| phone                 | 500000010                                                 |
| email                 | [test.sqli01@example.com](mailto:test.sqli01@example.com) |
| policies_accepted     | 1                                                         |
| password              | Admin#123                                                 |
| password_confirmation | Admin#123                                                 |
# Preconditions
- API is reachable
- Burp Suite or Postman intercepting requests
# Steps
- Send registration with SQL injection payload in the `name` field
- Capture HTTP response, response time, and body
- Check server logs for any DB errors leaking in the response
- Repeat with payloads: `1; DROP TABLE users--`, `" OR 1=1--`, `admin'--`
# Expected Result
- HTTP `422` (validation rejection) OR `201` with the literal string stored safely (not interpreted)
- No database error messages in response body
- No abnormal response time suggesting query execution
- No account created with elevated privileges
# Notes
- Any DB error message in the response body (e.g., `SQLSTATE`, `syntax error near`) is a **Critical** finding.
- If `201` is returned, verify in DB that the name was stored as a literal string, not executed.
# Attachments
