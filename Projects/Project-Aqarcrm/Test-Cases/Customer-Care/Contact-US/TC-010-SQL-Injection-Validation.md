---
tc_id: TC-Contact-US-010
title: Verify message field against SQL Injection attacks
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-002-Contact-US
tags:
  - test-case
run_result: Pass
---

# Test Data
| Field | Value |
| ----- | ----- |
|       |       |
|       |       |

# Preconditions
-User is on the Contact Us page.
# Steps
1. Fill all fields with  valid data .
2. In the Message field, enter a SQL Injection payload (e.g., ' OR '1'='1 Or'; DROP TABLE users;--).
3. Click Send Message.
# Expected Result
-The system treats the input as plain text or rejects it safely, prevents SQL Injection, and the application continues to function normally without exposing database errors or unauthorized access.
# Notes

# Attachments
