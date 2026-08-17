---
tc_id: TC-FAQ-091
title: Verify Invalid FAQ Configuration Does Not Prevent Other Sections from Rendering
priority: High
status: Draft
type: Regression
linked_requirement: FAQ-REQ-039
tags:
  - test-case
  - faq
  - invalid
  - isolation
  - regression
  - negative
---

# Test Data
| Field | Value |
| ----- | ----- |
| FAQ Section | invalid configuration |
| Other home screen section | valid configured section |

# Preconditions
- A home screen configuration contains an invalid FAQ section and at least one other valid home screen section.
- The configuration has been submitted to the Mobile App.

# Steps
1. Load the home screen in the Mobile App.
2. Observe the FAQ section behavior.
3. Observe the other valid home screen sections.

# Expected Result
- The invalid FAQ configuration does not prevent other valid home screen sections from rendering.
- The other valid home screen sections render normally.

# Notes

# Attachments