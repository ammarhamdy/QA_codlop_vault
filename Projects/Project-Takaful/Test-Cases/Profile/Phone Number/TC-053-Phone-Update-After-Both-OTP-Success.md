---
tc_id: TC-Phone-053
title: Verify that the phone number is updated only after both OTP verifications succeed
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
-Valid available new phone was submitted.
# Steps
1.  verify the current phone.  
2.  verify the new phone.  
3. Complete the phone change.  
4. Reopen **Edit Profile**.
# Expected Result
-The existing phone number is replaced with the new verified phone number only after both verification stages succeed, and the new phone is displayed as the current account phone.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*