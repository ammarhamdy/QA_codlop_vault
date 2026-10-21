---
tc_id: TC-008
title: Verify prevention of duplicate form submission
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-003
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
User is on 'Register Your Interest  ' page.
# Steps
1. Navigate to Register Your interst page.
2. Fill all fields with valid data.
3. Click the **Submit** button multiple times quickly (double click / rapid clicks).
4. Observe system behavior.
# Expected Result
- The system should process only one form submission even if the submit button is clicked multiple times.
# Notes

# Attachments
