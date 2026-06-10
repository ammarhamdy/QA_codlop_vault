---
tc_id: TC-036
title: Verify SQL injection protection in the password reset email field
priority: High
status:
  - Ready
type: Security
linked_requirement: US-001
tags:
  - test-case
  - authentication
  - reset-password
  - security
  - sqli
run_result:
---

# Test Data
| Field | Value |
| ----- | ----- |
| Email | ' OR '1'='1' -- |

# Preconditions
- User is on the password reset initiation page.
- The system is expected to sanitize or validate inputs against SQL injection.

# Steps
1. Enter a SQL injection payload (e.g., `' OR '1'='1' --`) into the email address field.
2. Click the "Send Reset Link" button.
3. Observe the system's response and check server logs if possible.

# Expected Result
- The system should reject the input with a validation error (e.g., "Invalid email format.").
- No SQL query should be executed against the database that compromises data.
- The system should not reveal any database errors in the response.
- No password reset email should be sent for such an input.

# Notes
- This test ensures that the application uses prepared statements or proper input sanitization for database queries.

# Attachments
