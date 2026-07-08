---
tc_id: TC-Login-018
title: Verify login using invalid  OTP
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
| Field | Value           |
| ----- | --------------- |
| phone | 01229743841     |
| email | fatma@gmail.com |

# Preconditions
-User has valid registered phone or email & request for OTP.
# Steps
1. Request an OTP.  
2. Enter incorrect OTP.  
# Expected Result
-Login is rejected, and the message is displayed "Invalid OTP. Please try again." 
# Notes

# Attachments
