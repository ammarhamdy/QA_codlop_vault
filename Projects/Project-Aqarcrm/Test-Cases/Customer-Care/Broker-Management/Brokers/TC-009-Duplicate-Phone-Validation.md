---
tc_id: TC-Brokers-009
title: Verify preventing duplicate phone number
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-008-Brokers-Management
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
-Broker with same phone exists.
# Steps
1. Add broker using existing phone number.
2. click save.
# Expected Result
-broker isn't added and duplicate validation message appears.
# Notes

# Attachments
