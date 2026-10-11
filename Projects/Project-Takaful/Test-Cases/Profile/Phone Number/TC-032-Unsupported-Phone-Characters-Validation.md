---
tc_id: TC-Phone-032
title: Verify that a phone number containing unsupported characters is rejected
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
| New Phone number     | 547-113-6 |
| New Phone number     | 5123AS891 |

# Preconditions
-Customer is in Change Phone Number flow.
# Steps
1. Click on Change phone number.
2. Enter a phone number containing unsupported characters.  

# Expected Result
-The phone number is rejected with an appropriate validation message, the customer cannot proceed, and the existing phone number remains unchanged.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*