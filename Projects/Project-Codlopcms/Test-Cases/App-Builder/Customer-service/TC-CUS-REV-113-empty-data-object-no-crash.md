---
tc_id: TC-CUS-REV-113
title: Verify an Empty settings.data-object Does Not Cause a Crash
priority: Medium
status: Draft
type: Regression
linked_requirement: CUS-REV-REQ-041
tags:
  - test-case
  - customer-review
  - empty
  - crash-safety
  - regression
---

# Test Data
| Field | Value |
| ----- | ----- |
| settings.data-object | [] (empty array) |

# Preconditions
- A Customer Review configuration has `settings.data-object` set to an empty array.

# Steps
1. Submit the Customer Review configuration to the Mobile App.
2. Load the home screen.
3. Observe the application's behavior.

# Expected Result
- The Mobile App supports an empty `settings.data-object` array.
- The Mobile App does not crash when no customer review items are configured.

# Notes

# Attachments