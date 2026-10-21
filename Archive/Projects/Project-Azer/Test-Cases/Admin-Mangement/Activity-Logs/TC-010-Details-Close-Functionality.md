---
tc_id: TC-010
title: Verify Closing Record Details Modal Using Close Button or modal close icon
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-003-General Settings Management
tags:
  - test-case
run_result: Fail
---

# Test Data
| Field                     | Value      |
| ------------------------- | ---------- |
| Administrator Credentials | Email/Pass |
|                           |            |

# Preconditions
Admin is logged in and on Activity Logs page
# Steps
1. Open Activity Logs page.  
2. Click on details icon for any record.  
3. Click on Close button **or** click on X icon.
# Expected Result
The details modal is closed successfully and the user is returned to the Activity Logs page without any data loss or UI issues.
# Notes

# Attachments
