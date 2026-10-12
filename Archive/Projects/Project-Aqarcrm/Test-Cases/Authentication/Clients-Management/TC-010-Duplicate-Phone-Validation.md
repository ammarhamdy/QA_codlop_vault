---
tc_id: TC-client-010
title: Verify preventing duplicate phone number
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-007-Clients-Management
tags:
  - test-case
run_result: Fail
---

# Test Data
| Field | Value |
| ----- | ----- |
|       |       |
|       |       |

# Preconditions
-Client with same phone exists.
# Steps
1. Add client using existing phone number.
2. click save.
# Expected Result
-Client isn't added and duplicate validation message appears.
# Notes

# Attachments
