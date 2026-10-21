---
tc_id: TC-015
title: Verify SQL Injection Prevention in Name Field
priority:
  - High
status:
  - Ready
type: Security
linked_requirement: US-001-Administrators Management
tags:
  - test-case
run_result: Pass
---

# Test Data
| Field                     | Value      |
| ------------------------- | ---------- |
| Administrator Credentials | Email/Pass |
|                           |            |

# Preconditions
Admin is logged in and on Admins page
# Steps
1. Navigate to the 'Admins' page.
2. Fill in valid data for other fields.
3. Enter ' OR '1'='1 in Name Field.
4. Click the "Send" button.
5. Repeat with '; DROP TABLE Admins; -- in partnership details field
# Expected Result
Input is handled safely and no database impact occurs
# Notes

# Attachments
