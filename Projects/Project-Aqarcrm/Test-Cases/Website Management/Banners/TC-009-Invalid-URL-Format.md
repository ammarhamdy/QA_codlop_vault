---
tc_id: TC-WebsiteB-009
title: Validate Invalid URL Format
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-016-Website-Management
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
-Admin is on the Add Banner page & **URL** is selected as the target type.
# Steps
1. Enter an invalid URL format in the **URL** field.  
2. Complete the remaining required fields.  
3. Click **Save**.
# Expected Result
-A validation message should be displayed indicating that the URL format is invalid, and the banner should not be added.
# Notes

# Attachments
