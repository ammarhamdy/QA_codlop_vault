---
tc_id: TC-Phone-056
title: Verify that a phone number released by another account can be used after becoming available
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
-A previously registered phone number is no longer registered(Deleted Account).
# Steps
1. Enter the phone number after it becomes available.  
2. Continue with the phone-change flow.
# Expected Result
-The system evaluates the phone number based on its current registration status and allows the customer to proceed if the number is now available according to the business rules.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*