---
tc_id: TC-Info-030
title: Verify that an empty phone number is rejected
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
| New Phone number     | (empty)   |

# Preconditions
-Customer is in Change Phone Number flow.
# Steps
1. Click on change phone number.
2. Leave New Phone Field empty.
# Expected Result
-The Verify button remains disabled while the  new phone number field is empty, the customer cannot proceed to OTP verification, and the existing phone number remains unchanged.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*