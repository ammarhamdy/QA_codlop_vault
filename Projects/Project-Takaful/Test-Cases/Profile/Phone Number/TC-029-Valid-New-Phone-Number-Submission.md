---
tc_id: TC-Info-029
title: Verify that the customer can submit a valid new phone number
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
| New Phone number     | 547113697 |

# Preconditions
-Customer is in Change Phone Number flow.
# Steps
1. Click on Change phone number.
2. Enter a valid new phone number.  
3. Click on verify Phone number.
# Expected Result
-The phone number passes validation, the applicable country code is handled automatically, and the customer proceeds to verify ownership of the current phone number.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*