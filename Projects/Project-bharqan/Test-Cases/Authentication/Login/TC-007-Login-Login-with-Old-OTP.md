---
tc_id: TC-Login-007
title: Verify login using an old OTP after requesting a new OTP
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
| Field | Value           |
| ----- | --------------- |
| phone | 01229743841     |
| email | fatma@gmail.com |
| OTP1  | 4597            |
| OTP2  | 6602            |

# Preconditions
-User has requested OTP twice
# Steps
1. Request OTP.  
2. Request a new OTP.  
3. Enter 4597.  

# Expected Result
Login is rejected, and an error message indicates that the OTP is invalid or has expired.
# Notes

# Attachments
