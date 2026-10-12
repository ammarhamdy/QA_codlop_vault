---
tc_id: TC-Contact-US-021
title: Verify message counters update after changing the message status
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
-Read and Unread contact messages exist.
# Steps
1. Change an Unread message to Read.
2. Change a Read message to Unread.
3. Observe the message counters.
# Expected Result
-The Read and Unread message counters are updated correctly after each status change.
# Notes

# Attachments
