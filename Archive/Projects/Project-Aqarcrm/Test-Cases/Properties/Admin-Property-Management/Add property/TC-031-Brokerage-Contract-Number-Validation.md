---
tc_id: TC-A-Prop-031
title: Verify Brokerage Contract Number format validation
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-009-Properties
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
-Admin on add broker form on Brokerage & Signboard step.
# Steps
1. Enter a valid contract number.
2. Verify it is accepted.
3. Enter an invalid contract number with an incorrect format.
4. Click Next.
# Expected Result
-System should accept a valid brokerage contract number and reject invalid formats with an appropriate validation message.
# Notes

# Attachments
