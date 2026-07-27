---
tc_id: TC-Register-007
title: Verify registration when a required field is left empty
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-001-Bahrqan-Authentication
tags:
  - test-case
run_result: Pass
---

# Test Data
| Field | Value |
| ----- | ----- |
|       |       |
|       |       |
|       |       |

# Preconditions
User is on the Sign Up screen
# Steps
1. Leave one required field empty (Name, Email, or Phone Number).  
2. Fill the remaining required fields with valid data.  
3. Click **Register**.  
4. Repeat the test for each required field.
# Expected Result
A validation message is displayed for the empty required field, and the registration process is not completed until all required fields are filled.
# Notes

# Attachments
