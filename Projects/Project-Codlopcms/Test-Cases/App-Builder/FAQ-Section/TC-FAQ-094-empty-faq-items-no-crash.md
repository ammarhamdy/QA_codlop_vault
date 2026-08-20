---
tc_id: TC-FAQ-094
title: Verify Empty FAQ Items Do Not Cause a Crash
priority: Medium
status:
  - completed
type: Regression
linked_requirement: FAQ-REQ-040
tags:
  - test-case
  - faq
  - empty
  - crash-safety
  - regression
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| settings.data-object | [] (empty array) |

# Preconditions
- An FAQ configuration has `settings.data-object` set to an empty array.

# Steps
1. Submit the FAQ configuration to the Mobile App.
2. Load the home screen.
3. Observe the application's behavior.

# Expected Result
- The Mobile App supports an empty `settings.data-object` array.
- The Mobile App does not crash when no FAQ items are configured.

# Notes

# Attachments