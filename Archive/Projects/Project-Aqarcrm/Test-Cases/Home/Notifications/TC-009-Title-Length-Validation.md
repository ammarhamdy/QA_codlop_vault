---
tc_id: TC-Not-009
title: Verify title length validation
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-011-Notifications
tags:
  - test-case
run_result: Fail
---

# Test Data
| Field | Value |
| ----- | ----- |
|       |       |
|       |       |

# Preconditions
-Admin is on the Add Notification pageز
# Steps
1. Enter a title that exceeds the maximum allowed length. 
2. Fill the remaining required fields. 
3. Click **Send**.
# Expected Result
-The system displays a validation message and prevents sending the notification.
# Notes

# Attachments
