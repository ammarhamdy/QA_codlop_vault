---
tc_id: TC-Loc-007
title: Verify validation, success, and error messages are localized
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-005-Beauty-Localization
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
-User install application.
# Steps
1. Select Arabic as the application language.
2. Trigger a validation message (e.g., submit an empty required field).
3. Perform a successful action to display a success message.
4. Trigger an error message (e.g., invalid login credentials or network error).
5. Switch language & observe.
# Expected Result
-All validation, success, and error messages are displayed in the selected language with correct translation and no mixed-language content.
# Notes

# Attachments
