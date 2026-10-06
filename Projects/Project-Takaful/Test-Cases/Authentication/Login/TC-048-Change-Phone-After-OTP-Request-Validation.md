---
tc_id: TC-Login-048
title: Verify changing phone number after OTP request
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
-OTP screen is displayed for Phone A.
# Steps
1. Request OTP for Phone A.  
2. Navigate back to Login.  
3. Replace Phone A with Phone B.  
4. Request OTP.
# Expected Result
-The new OTP request is associated with Phone B, and an OTP for Phone A cannot authenticate Phone B.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*