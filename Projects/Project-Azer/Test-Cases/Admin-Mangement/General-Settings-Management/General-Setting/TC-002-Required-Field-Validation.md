---
tc_id: TC-002
title: Verify Save General Settings with Empty Platform Fields
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-003-General Settings Management
tags:
  - test-case
run_result: Pass
---

# Test Data
| Field                     | Value      |
| ------------------------- | ---------- |
| Administrator Credentials | Email/Pass |
|                           |            |

# Preconditions
Admin is logged in and on Admins page
# Steps
1. Leave Platform Title/All Fiek empty.  
2. Fill other required fields.  
3. Click **Save**
# Expected Result
Validation error is displayed and settings are not saved.
# Notes

# Attachments
