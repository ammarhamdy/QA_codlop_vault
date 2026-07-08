---
tc_id: TC-Login-008
title: Verify phone number field when left empty
priority:
  - High
status:
  - Draft
type:
  - Functional
linked_requirement: US-001-Beauty-Authentication
tags:
  - test-case
---

# Test Data
| Field        | Value |
| ------------ | ----- |
| Phone number | empty |
|              |       |

# Preconditions
-User on Login screen
# Steps
1. Leave the phone number field empty.  
2. Click **Continue/Send OTP**.
# Expected Result
-A validation message is displayed indicating that the phone number is required.
# Notes

# Attachments
