---
tc_id: TC-DeL-004
title: Verify old session is invalid after account deletion
priority:
  - High
status:
  - Draft
type:
  - Functional
linked_requirement: US-001-Aqar-Authentication
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
|       |       |
|       |       |

# Preconditions
-User deletes the account while logged in.
# Steps
1. Refresh the page or perform any authenticated action after deletion.
# Expected Result
-The previous session is invalidated, and the user is treated as a guest.
# Notes

# Attachments
