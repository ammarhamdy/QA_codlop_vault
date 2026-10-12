---
tc_id: TC-WebsiteB-003
title: Validate Required Fields When Adding Banner
priority:
  - High
status:
  - Draft
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
-Admin is on the Add Banner page.
# Steps
1. Leave one or more required fields empty.  
2. Click **Save**.
# Expected Result
-Validation messages should be displayed for the required fields, and the banner should not be added.
# Notes

# Attachments
