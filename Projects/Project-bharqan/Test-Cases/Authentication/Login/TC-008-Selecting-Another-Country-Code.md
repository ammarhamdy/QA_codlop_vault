---
tc_id: TC-Login-008
title: Verify Selecting Another Country Code
priority:
  - High
status:
  - Draft
type:
  - Functional
linked_requirement: US-001-Bahrqan-Authentication
tags:
  - test-case
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
2. Select a different country from the list Egypt.
# Expected Result
The selected country is updated successfully, and the corresponding country code (+20) is displayed in the phone number field.
# Notes

# Attachments
