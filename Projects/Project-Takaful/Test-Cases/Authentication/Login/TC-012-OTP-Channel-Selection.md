---
tc_id: TC-Login-012
title: Verify selected OTP channel
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: REQ-TAKAFUL-AUTH-001-Customer-Login-Redirection
tags:
  - test-case
---

# Test Data
| Field        | Value     |
| ------------ | --------- |
| Code         | +966      |
| Phone number | 514712311 |

# Preconditions
-User is on Login screen.
# Steps
1. enter valid phone '514712311'.
2. Select SMS.  
3. Request OTP.  
4. Repeat using WhatsApp.
# Expected Result
-OTP is delivered through the selected channel.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*