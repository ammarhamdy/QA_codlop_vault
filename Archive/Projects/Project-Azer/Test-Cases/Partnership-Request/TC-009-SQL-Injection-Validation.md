---
tc_id: TC-009
title: Verify SQL Injection protection for Entity Overview & Partnership Details
priority:
  - High
status:
  - Ready
type: Security
linked_requirement: US-004
tags:
  - test-case
run_result: pass
---

# Test Data
| Field               | Value                   |
| ------------------- | ----------------------- |
| Entity Overview     | ' OR '1'='1             |
| Partnership Details | '; DROP TABLE users; -- |


# Preconditions
- User is on 'Partnership Request ' page.
# Steps
1. Navigate to the 'Partnership Request' page.
2. Fill in valid data for other fields.
3. Enter ' OR '1'='1 in Entity Overview Field.
4. Click the "Send" button.
5. Repeat with '; DROP TABLE users; -- in partnership details field.
# Expected Result
The system should prevent SQL injection attacks and handle malicious input securely without affecting the System or database.
# Notes

# Attachments
