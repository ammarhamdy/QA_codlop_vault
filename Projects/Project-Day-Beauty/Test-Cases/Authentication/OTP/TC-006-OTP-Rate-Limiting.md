---
tc_id: TC-OTP-006
title: Verify OTP request rate limiting
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
| Field | Value |
| ----- | ----- |
|       |       |
|       |       |

# Preconditions
-Valid registered phone/email (Login) or valid registration data (Registration).
# Steps
1. Open the Login or Registration screen.  
2. Enter a valid phone number or email.  
3. Request an OTP repeatedly until the allowed request limit is exceeded.
# Expected Result
-The system should block additional OTP requests after the allowed limit and display an appropriate message indicating that the request limit has been exceeded.
# Notes

# Attachments
