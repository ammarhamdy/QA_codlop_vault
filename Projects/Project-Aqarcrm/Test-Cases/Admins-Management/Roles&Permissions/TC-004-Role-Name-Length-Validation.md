---
tc_id: TC-Role-004
title: Verify role name length validation
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
-Admin is on the **Add Role** page.
# Steps
1. Enter a role name shorter than the minimum allowed length & Click **Save**.   
2. Enter a role name within the allowed length & Click **Save**.  
3. Enter a role name exceeding the maximum allowed length & Click **Save**.  
# Expected Result
-The system rejects role names shorter than the minimum or longer than the maximum allowed length and displays the appropriate validation message. A role name within the allowed length is accepted successfully.
# Notes

# Attachments
