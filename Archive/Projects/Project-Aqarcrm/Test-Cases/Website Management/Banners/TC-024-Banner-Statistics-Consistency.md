---
tc_id: TC-WebsiteB-024
title: Verify Banner Statistics After Adding or Deleting a Banner
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
-Admin is on the Banners Management page and banners exist.
# Steps
1. Note the current total, active, and inactive banner counts.  
2. Add a new banner and verify the statistics.  
3. Delete a banner and verify the statistics again.
# Expected Result
-After adding a banner, the total count and corresponding active/inactive count should be updated correctly. After deleting a banner, the total count and corresponding active/inactive count should be decreased correctly.
# Notes

# Attachments
