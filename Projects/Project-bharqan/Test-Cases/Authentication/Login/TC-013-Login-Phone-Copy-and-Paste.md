---
tc_id: TC-Login-013
title: Verify pasting a phone number into the phone number field
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
| Field | Value      |
| ----- | ---------- |
| Phone | 0119743842 |
|       |            |

# Preconditions
-User is on the Login screen.
# Steps
1. Copy a valid phone number.  
2. Paste it into the phone number field.  
3. Click Send OTP**.
# Expected Result
The pasted phone number is accepted and processed correctly.
# Notes

# Attachments
