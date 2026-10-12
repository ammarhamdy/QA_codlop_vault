---
tc_id: TC-PCat-004
title: Verify Property Category Name Length Validation
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-017-Property-Settings1
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
-Admin is on the Add Property Category page.
# Steps
1. Enter a category name that is **shorter than the minimum allowed length or exceeds the maximum allowed length**.
2. Click **Save**.
# Expected Result
-The system prevents submission and displays the appropriate validation message indicating that the category name must be within the allowed length range.
# Notes

# Attachments
