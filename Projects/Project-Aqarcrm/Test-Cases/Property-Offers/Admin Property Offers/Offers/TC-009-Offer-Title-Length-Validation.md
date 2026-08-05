---
tc_id: TC-
title:
priority:
  - High
status:
  - Ready
type:
  - Functional
  - Regression
  - API
linked_requirement:
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
-Add Property Offer form is open.
# Steps
1. Enter an offer title with the maximum allowed number of characters.  
2. Verify the title is accepted.  
3. Enter an offer title exceeding the maximum allowed length.  
4. Attempt to save the offer.
# Expected Result
-The system accepts a title within the maximum allowed length and rejects titles exceeding the allowed limit by displaying a validation message or preventing additional characters.
# Notes

# Attachments
