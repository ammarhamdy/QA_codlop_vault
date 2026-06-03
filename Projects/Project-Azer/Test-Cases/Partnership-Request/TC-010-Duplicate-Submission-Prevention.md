---
tc_id: TC-010
title: Verify prevention of duplicate form submission
priority:
  - High
status:
  - Draft
type:
  - Functional
linked_requirement: US-004
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
|       |       |
|       |       |

# Preconditions
User is on 'Partnership Request' page.
# Steps
1. Navigate to Partnership Request page.
2. Fill all fields with valid data.
3. Click the **Submit** button multiple times quickly (double click / rapid clicks).
4. Observe system behavior.
# Expected Result
- The system should process only one form submission even if the submit button is clicked multiple times.
# Notes

# Attachments
