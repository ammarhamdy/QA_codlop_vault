---
tc_id: TC-U-Prop-030
title: Verify Broker Notes field accepts valid text within the allowed character limit
priority:
  - High
status:
  - Draft
type:
  - Functional
linked_requirement: US-009-Properties
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
|       |       |
|       |       |

# Preconditions
-User is logged in as a Broker on add property form  on Brokerage & Signboard step.
# Steps
1. Enter valid text in the Broker Notes field.   
2. Enter text exceeding the maximum allowed character limit (if defined).
# Expected Result
-System should accept valid text and prevent entering or saving text that exceeds the allowed character limit, displaying an appropriate validation message if applicable.
# Notes

# Attachments
