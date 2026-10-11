---
tc_id: TC-Phone-052
title: Verify that the existing phone remains unchanged after current-phone verification failure
priority:
  - High
status:
  - Draft
type:
  - Functional
linked_requirement: Edit Profile
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
|       |       |
|       |       |

# Preconditions
-Customer has submitted a valid new phone.
# Steps
1. Enter an incorrect/expired current-phone OTP.  
2. Check the registered phone number.
# Expected Result
-The phone change is rejected, the new phone is not saved, and the existing phone number remains unchanged.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*