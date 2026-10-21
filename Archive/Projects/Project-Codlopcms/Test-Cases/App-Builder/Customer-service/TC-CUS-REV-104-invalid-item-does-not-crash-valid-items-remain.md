---
tc_id: TC-CUS-REV-104
title: Verify an Invalid Review Item Does Not Crash the Mobile App and Valid Items Remain
priority: High
status: Draft
type: Regression
linked_requirement: CUS-REV-REQ-038
tags:
  - test-case
  - customer-review
  - validation
  - crash-safety
  - regression
  - negative
---

# Test Data
| Field | Value |
| ----- | ----- |
| Review Item 1 (valid) | rate 5, customer_name "Sarah M.", review "Excellent product, highly recommended!" |
| Review Item 2 (invalid) | customer_name "John D.", review "Very good quality and fast delivery." (missing rate) |

# Preconditions
- A Customer Review configuration contains one valid review item and one invalid review item (missing `rate`).

# Steps
1. Submit the Customer Review configuration to the Mobile App.
2. Load the home screen.
3. Observe the application's behavior and the rendered review items.

# Expected Result
- An invalid customer review item does not cause the Mobile App to crash.
- Valid customer review items remain renderable.
- The valid review item "Sarah M." is rendered correctly.

# Notes

# Attachments