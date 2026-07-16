---
tc_id: TC-Address-009
title: Verify National Address Input Validation
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-010-Beauty-Addresses
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
-Address form is open.
# Steps
1. Open the **Add Address** screen.  
2. Enter a numbers-only value in the **National Address** field and tap **Save**.  
3. Repeat using a letters-only value.  
4. Repeat using a value longer than the maximum allowed length.  
5. Observe the system behavior for each input
# Expected Result
-The system validates the **National Address** field according to its rules. Invalid inputs are rejected with an appropriate validation message, or input is restricted to the allowed format and maximum length. The address cannot be saved until a valid National Address is entered.
# Notes

# Attachments
