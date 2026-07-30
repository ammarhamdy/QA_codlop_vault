---
tc_id: TC-Broker-Req-019
title: Verify Request counters update after changing the message request status
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-004-Broker-Join-Request
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
-Pending ,Accepted or Reused Requests exist.
# Steps
1. Change Pending Req to Accepted.
2. Change Refused message to Accepted.
3. Observe the request counters.
# Expected Result
-Pending, Accepted and Refused Request counters are updated correctly after each status change.
# Notes

# Attachments
