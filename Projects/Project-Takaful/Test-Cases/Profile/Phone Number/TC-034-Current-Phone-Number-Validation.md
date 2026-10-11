---
tc_id: TC-Phone-034
title: Verify that the current phone number cannot be submitted as a new phone number
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
| Field                | Value     |
| -------------------- | --------- |
| Current phone number | 512347891 |
| New Phone number     | 512347891 |

# Preconditions
-Customer is in Change Phone Number flow.
# Steps
1. Click on Change phone number.
2. Enter the current registered phone number.  

# Expected Result
-The system displays an appropriate validation message indicating that the entered phone number is the same as the current registered phone number, and the customer cannot proceed with the phone change.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*