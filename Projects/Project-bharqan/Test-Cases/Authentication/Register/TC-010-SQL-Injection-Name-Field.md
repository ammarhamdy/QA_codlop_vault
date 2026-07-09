---
tc_id: TC-Register-010
title: Verify SQL Injection Payload in Name Field Is Rejected or Sanitized
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-001-Bahrqan-Authentication
tags:
  - test-case
run_result: Pass
---

# Test Data
| Field | Value            |
| ----- | ---------------- |
| Name  | ' OR '1'='1`     |
| Phone | 576800010        |
| Email | test@example.com |

# Preconditions
-User is on Register screen.
# Steps
1. Enter the SQL injection payload in the  Name field.
2. Enter a valid phone number.
3. Enter a valid email address.
4. Repeat with payloads: `1; DROP TABLE users--`, `" OR 1=1--`, `admin'--`
# Expected Result
-The system should reject or safely sanitize the SQL injection input
# Notes

# Attachments
