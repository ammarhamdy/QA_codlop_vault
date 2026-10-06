---
tc_id: TC-Logout-003
title: Verify logout on one device does not affect another device
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
-Same account is logged in on two devices.
# Steps
1. Login on Device A and Device B.
2. Logout from Device A.
3. Open the app on Device B.

# Expected Result
-Device A is logged out, while Device B remains logged in As sessions are independent.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*