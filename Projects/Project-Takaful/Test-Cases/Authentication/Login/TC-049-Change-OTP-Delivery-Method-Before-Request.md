---
tc_id: TC-Login-049
title: Verify changing OTP delivery method before requesting OTP
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
-User is on Login screen.
# Steps
1. Enter a valid phone number.  
2. Select SMS.  
3. Change the selection to WhatsApp.  
4. Request OTP.
# Expected Result
-OTP is requested through the currently selected delivery method only.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*