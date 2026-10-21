---
tc_id: TC-FAQ-095
title: Verify No FAQ Item Is Rendered When data-object Is Empty
priority: Medium
status:
  - completed
type: Regression
linked_requirement: FAQ-REQ-040
tags:
  - test-case
  - faq
  - empty
  - rendering
  - regression
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| settings.data-object | [] (empty array) |

# Preconditions
- An FAQ configuration has `settings.data-object` set to an empty array.
- The configuration has been submitted to the Mobile App.

# Steps
1. Load the home screen in the Mobile App.
2. Locate the FAQ section.
3. Observe the rendered content.

# Expected Result
- No FAQ item is rendered when `settings.data-object` is empty.
- An empty FAQ item collection does not cause invalid or placeholder FAQ content to be displayed.

# Notes

# Attachments