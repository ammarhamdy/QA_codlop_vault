---
tc_id: TC-WebsiteB-005
title: Validate Banner Description Length
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
1. Enter a value in the **Description** field below the minimum  or exceeding the maximum allowed length. 
2. Verify the validation message.  
3. Enter a value within the allowed length range.
# Expected Result
-A validation message should be displayed when the Description is below the minimum allowed length or exceeds the maximum allowed length. A valid value within the allowed range should be accepted.
# Notes

# Attachments
