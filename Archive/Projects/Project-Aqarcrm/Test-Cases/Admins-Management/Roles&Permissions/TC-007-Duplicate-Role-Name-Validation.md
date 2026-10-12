---
tc_id: TC-Role-007
title: Verify adding a role with an existing role name
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-013-Admins-Management
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
-A role with the same name already exists.
# Steps
1. Enter the name of an existing role.  
2. Select permissions & Click **Save**.
# Expected Result
-The system prevents adding the duplicate role and displays an appropriate validation message indicating that the role name already exists.
# Notes

# Attachments
