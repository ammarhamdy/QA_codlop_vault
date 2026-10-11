---
tc_id: TC-Phone-054
title: Verify that exiting before current-phone verification does not change the phone number
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
-Customer has submitted a new phone.
# Steps
1. Exit the flow before verifying the current phone.  
2. Reopen **Edit Profile**.
# Expected Result
The phone-change process is not completed, the new phone is not saved, and the existing phone number remains unchanged.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*