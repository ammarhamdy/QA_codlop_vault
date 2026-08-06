---
tc_id: TC-Not-021
title: Verify "Delete Selected" is unavailable when no notification is selected
priority:
  - High
status:
  - Draft
type:
  - Functional
linked_requirement: US-011-Notifications
tags:
  - test-case
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
