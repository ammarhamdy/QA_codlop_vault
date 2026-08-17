---
tc_id: TC-PFac-004
title: Verify Property Facade Name Length Validation
priority:
  - High
status:
  - Draft
type:
  - Functional
linked_requirement: US-017-Property-Settings1
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
|       |       |
|       |       |

# Preconditions
-Admin is on the Add Property Facade page.
# Steps
1. Enter a facade name that is **shorter than the minimum allowed length or exceeds the maximum allowed length**.  
2. Click **Save**.
# Expected Result
-The system prevents submission and displays the appropriate validation message indicating that the facade name must be within the allowed length range.
# Notes

# Attachments
