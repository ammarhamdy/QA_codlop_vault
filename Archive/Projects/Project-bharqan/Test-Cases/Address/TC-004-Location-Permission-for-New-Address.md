---
tc_id: TC-Address-004
title: Verify Location Permission Handling When Adding a New Address
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-010-Bharqan-Addresses
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
-User is logged in and on my **Addresses** and Location permission is disabled.
# Steps
1. Tap Add New Address.
2. Verify that the app requests location permission.
3. Tap Allow.
4. Verify that the location confirmation screen is displayed.
5. Repeat the steps and tap Deny.
# Expected Result
-If the user **allows** location permission, the location confirmation screen is displayed, allowing the user to continue adding the address. If the user **denies** location permission, an appropriate message is displayed and the user cannot continue until permission is granted
# Notes

# Attachments
