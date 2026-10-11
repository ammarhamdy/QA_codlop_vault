---
tc_id: TC-Phone-033
title: Verify that a phone number already registered to another customer is rejected
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
| New Phone number     | 578911123 |

# Preconditions
-Customer is in Change Phone Number flow.
# Steps
1. Click on Change phone number.
2. Enter a phone number already registered to another customer.  

# Expected Result
-The system rejects the phone number with an appropriate error message, prevents the customer from proceeding, and keeps the current phone number unchanged.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*