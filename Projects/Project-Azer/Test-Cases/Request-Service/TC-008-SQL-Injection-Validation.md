---
tc_id: TC-008
title: Verify SQL  protection for Request Details
priority:
  - High
status:
  - Draft
type:
  - Security
linked_requirement: US-005
tags:
  - test-case
---

# Test Data
| Field           | Value                   |
| --------------- | ----------------------- |
| Request Details | ' OR '1'='1             |
| Request Details | '; DROP TABLE users; -- |

# Preconditions
- User is on 'Service Request ' page.
# Steps
1. Navigate to the 'Service Request' page.
2. Fill in valid data for other fields.
3. Enter ' OR '1'='1 in Request Details Field.
4. Click the "Send" button.
5. Repeat with '; DROP TABLE users; -- .
# Expected Result
-The system should prevent SQL injection attacks and handle malicious input securely without affecting the System or database.
# Notes

# Attachments
