---
tc_id: TC-Report-006
title: Validate invalid date range
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-015-Reports
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
-Properties /clients /Property & broker requests Report is opened
# Steps
1. Select a From Date.  
2. Select a To Date earlier than the From Date.
# Expected Result
-The system prevents applying the invalid date range and displays an appropriate validation message.
# Notes

# Attachments
