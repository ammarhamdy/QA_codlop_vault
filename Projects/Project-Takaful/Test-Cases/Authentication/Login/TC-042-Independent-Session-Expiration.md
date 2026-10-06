---
tc_id: TC-Login-042
title: Verify one session expiration does not terminate another session
priority:
  - High
status:
  - Draft
type:
  - Functional
linked_requirement:
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
|       |       |
|       |       |

# Preconditions
-User is logged in on multiple devices.
# Steps
1. Log in to the application on Device A.  
2. Log in to the same account on Device B two days later.  
3. Wait until the 30-day session of Device A expires.  
4. Open the application on Device A.  
5. Open the application on Device B.
# Expected Result
-Device A requires the customer to log in again because its session has expired, while Device B remains logged in because its session is still valid.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*