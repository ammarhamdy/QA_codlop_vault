---
tc_id: TC-FAQ-089
title: Verify Invalid FAQ Item Does Not Crash and Valid Items Remain Renderable
priority: High
status:
  - completed
type: Regression
linked_requirement: FAQ-REQ-038
tags:
  - test-case
  - faq
  - validation
  - crash-safety
  - regression
  - negative
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| FAQ Item 1 (valid) | Q: How do I reset my password? / A: Go to Settings > Security. |
| FAQ Item 2 (invalid) | Q: (missing) / A: (missing) |

# Preconditions
- An FAQ configuration contains a valid FAQ item and an FAQ item with missing `question` and `answer`.
- The configuration has been submitted to the Mobile App.

# Steps
1. Load the home screen in the Mobile App.
2. Observe the application's behavior.
3. Observe whether the valid FAQ item is rendered.

# Expected Result
- An FAQ item with invalid data does not cause the Mobile App to crash.
- Valid FAQ items remain available for rendering when another FAQ item contains invalid data.

# Notes

# Attachments