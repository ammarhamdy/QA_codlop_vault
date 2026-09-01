---
tc_id: TC-Login-006
title: Verify Selecting Another Country Code
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-001-Beauty-Authentication
tags:
  - test-case
run_result: Pass
---

# Test Data
| Field   | Value |
| ------- | ----- |
| country | egypt |
|         |       |

# Preconditions
-User on Login Screen.
# Steps
1. Open the country code selector.  
2. Select country from the list "Egypt".
# Expected Result
-The selected country is updated successfully, and the corresponding country code (+20) is displayed in the phone number field.
# Notes

# Attachments
