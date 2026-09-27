---
tc_id: TC-Media-020
title: Storage usage updates when filtering by section
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-003-Media
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
-Media Library contains files from multiple sections with different  sizes.
# Steps
1. Note the total storage size shown with "All" filter selected  
2. Click a specific section filter (e.g., "Services")  
3. Observe the displayed storage size
# Expected Result
-The storage size updates to reflect only the total size of files belonging to the selected section.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*