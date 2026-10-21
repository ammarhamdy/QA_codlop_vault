---
tc_id: TC-CUS-REV-108
title: Verify an Invalid Rating Does Not Crash the Mobile App
priority: High
status: Draft
type: Regression
linked_requirement: CUS-REV-REQ-039
tags:
  - test-case
  - customer-review
  - validation
  - rate
  - crash-safety
  - regression
  - negative
---

# Test Data
| Field | Value |
| ----- | ----- |
| Review Item 1 rate | 5 (valid) |
| Review Item 2 rate | "excellent" (invalid, non-numeric) |
| Review Item 2 customer_name | John D. |
| Review Item 2 review | Very good quality and fast delivery. |

# Preconditions
- A Customer Review configuration contains one review item with a valid rating and one with an invalid rating.

# Steps
1. Submit the Customer Review configuration to the Mobile App.
2. Load the home screen.
3. Observe the application's behavior.

# Expected Result
- An invalid rating does not cause the Mobile App to crash.
- The Customer Review section is handled safely without crashing.

# Notes

# Attachments