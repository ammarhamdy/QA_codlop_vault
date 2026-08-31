---
tc_id: TC-Contact-015
title: Verify Message field handles SQL Injection input safely
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement:
tags:
  - test-case
---

# Test Data
| Field   | Value       |
| ------- | ----------- |
| message | ' OR '1'='1 |
| message | " OR "1"="1 |
|         |             |

# Preconditions
-Request Form is displayed.
# Steps
1. Enter a SQL Injection payload in the Message field.
2. Submit the form with all required fields filled with valid data.

# Expected Result
-The system handles the input safely as plain text without executing SQL commands, exposing database information, bypassing validation, or causing a server error.
# Notes

# Attachments/Script

---
*Last Updated: {{date}} {{time}}*