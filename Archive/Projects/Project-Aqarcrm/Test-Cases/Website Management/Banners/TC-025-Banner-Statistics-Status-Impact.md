---
tc_id: TC-WebsiteB-025
title: Verify Banner Statistics After Status Change
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-016-Website-Management
tags:
  - test-case
run_result: Pass
---

# Test Data
| Field | Value |
| ----- | ----- |
|       |       |
|       |       |

# Preconditions
-At least one active banner exists.
# Steps
1. Note the current active and inactive counts.  
2. Change an active banner to inactive.  
3. Check the statistics.
# Expected Result
-The active count should decrease by one and the inactive count should increase by one.
# Notes

# Attachments
