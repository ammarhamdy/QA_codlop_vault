---
tc_id: TC-Login-009
title: Verify account creation for unregistered phone number login
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-001-Aqar-Authentication
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
The phone number is not registered in the system.
# Steps
1. Open  login screen.  
2. Enter an unregistered phone number.  
3. Click **Send OTP**.  
4. Enter the correct OTP.  
5. Submit the OTP.
# Expected Result
-The system successfully creates a new account for the first-time phone number, authenticates the user, and redirects the user to the Home page.
# Notes

# Attachments
