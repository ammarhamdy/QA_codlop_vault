---
tc_id: TC-U-Prop-015
title: Verify dependent dropdowns cannot be selected before selecting the required previous field
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
-User is logged in as a Broker & on Location section.
# Steps
1. Try to open City dropdown without selecting Region  
2. Try to open District dropdown without selecting City
# Expected Result
-City dropdown should not allow selection until a Region is selected, and District dropdown should not allow selection until a City is selected.
# Notes

# Attachments
