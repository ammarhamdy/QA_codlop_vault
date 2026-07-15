---
tc_id: TC-Admin-028
title: Verify Profile Image File Extension Validation
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
-Admin on the **Add Supervisor** screen.
# Steps
1. Click the profile image upload field.  
2. Select a file with an unsupported extension (svg,...).  
3. Click **Save**.
# Expected Result
-The file is rejected, an appropriate validation message is displayed indicating that only (jpg,jpeg,png,wepp) formats are allowed.
# Notes

# Attachments
