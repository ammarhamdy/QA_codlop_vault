---
tc_id: TC-Not-021
title: Verify "Delete Selected" is unavailable when no notification is selected
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-011-Notifications
tags:
  - test-case
run_result: Pass
---

# Test Data
| Field | Value |
| ----- | ----- |
|       |       |
|       |       |

# Preconditions
-Notifications exist.
# Steps  
1. Do not select any notification.  
2. Click **Delete Selected**.
# Expected Result
-The system prevents the action and prompts the admin to select at least one notification, or the button remains disabled.
# Notes

# Attachments
