---
tc_id: TC-PATT-005
title: Verify Property Attribute Name Length Validation
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
-Admin is on the Add Property Attribute page.
# Steps
1. Select a valid property type.  
2. Enter a feature name that is **shorter than the minimum allowed length or exceeds the maximum allowed length**.  
3. Click **Save**.
# Expected Result
-The system prevents submission and displays the appropriate validation message indicating that the Attribute name must be within the allowed length range.
# Notes

# Attachments
