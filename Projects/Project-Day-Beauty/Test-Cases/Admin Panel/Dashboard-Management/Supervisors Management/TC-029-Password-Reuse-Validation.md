---
tc_id: TC-Admin-029
title: Verify New Password Cannot Be the Same as Current Password
priority:
  - High
status:
  - Draft
type:
  - Functional
linked_requirement: US-013-Beauty-Dashboard-Management
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
-Admin opens  **Edit Supervisor** Form.
# Steps
1. Open  Edit Supervisor Form.
2. Enter supervisor's current password in New Pass field& same pass in Confirm New Pass field.
3. Click Save.
# Expected Result
-The system prevents saving the changes and displays an appropriate validation message indicating that the new password cannot be the same as the current password.
# Notes

# Attachments
